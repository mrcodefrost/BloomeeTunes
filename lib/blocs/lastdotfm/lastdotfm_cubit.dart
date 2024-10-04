import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:Bloomee/blocs/mediaPlayer/bloomee_player_cubit.dart';
import 'package:Bloomee/main.dart';
import 'package:Bloomee/model/songModel.dart';
import 'package:Bloomee/repository/LastFM/lastfmapi.dart';
import 'package:Bloomee/routes_and_consts/global_conts.dart';
import 'package:Bloomee/routes_and_consts/global_str_consts.dart';
import 'package:Bloomee/services/db/bloomee_db_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/subjects.dart';
import 'package:url_launcher/url_launcher.dart';

part 'lastdotfm_state.dart';

class LastdotfmCubit extends Cubit<LastdotfmState> {
  LastFmAPI lastFmAPI = LastFmAPI();
  StreamSubscription? scrobbleSub;
  BloomeePlayerCubit playerCubit;
  MediaItemModel lastPlayed = mediaItemModelNull;
  Stopwatch stopwatch = Stopwatch();
  BehaviorSubject<MediaItemModel> playedMedia =
      BehaviorSubject<MediaItemModel>.seeded(mediaItemModelNull);

  LastdotfmCubit({
    required this.playerCubit,
  }) : super(LastdotfmInitial()) {
    initializeFromDB();
    songTimeTracker();
  }

  void songTimeTracker() {
    bloomeePlayerCubit.progressStreams.listen((event) async {
      if (bloomeePlayerCubit.bloomeePlayer.audioPlayer.playing &&
          event.currentPlaybackState.processingState == ProcessingState.ready) {
        if (lastPlayed != bloomeePlayerCubit.bloomeePlayer.currentMedia ||
            !stopwatch.isRunning) {
          if (stopwatch.isRunning) {
            stopwatch.stop();
            stopwatch.reset();
          }
          stopwatch.start();
          lastPlayed = bloomeePlayerCubit.bloomeePlayer.currentMedia;
        } else if ((stopwatch.elapsed.inSeconds > 30 ||
                (stopwatch.elapsed.inSeconds /
                        (bloomeePlayerCubit
                                    .bloomeePlayer.currentMedia.duration ??
                                const Duration(
                                    hours:
                                        1)) // if duration is null, set it to 1 hour to avoid division by zero
                            .inSeconds) >
                    0.5) &&
            bloomeePlayerCubit.bloomeePlayer.currentMedia == lastPlayed &&
            bloomeePlayerCubit.bloomeePlayer.currentMedia !=
                playedMedia.value) {
          playedMedia.add(bloomeePlayerCubit.bloomeePlayer.currentMedia);
          log("Scrobbling: ${bloomeePlayerCubit.bloomeePlayer.currentMedia.title}",
              name: "Last.FM");
          final isSuccess = await scrobble(lastPlayed);
          log("Scrobble ${isSuccess ? "success" : "failed"}!", name: "Last.FM");
        }
      } else if (lastPlayed != bloomeePlayerCubit.bloomeePlayer.currentMedia) {
        stopwatch.stop();
        stopwatch.reset();
      } else {
        stopwatch.stop();
      }
    });
  }

  void initialize(String apiKey, String apiSecret, String sessionKey) {
    emit(LastdotfmIntialized(
        apiKey: apiKey, apiSecret: apiSecret, sessionKey: sessionKey));
  }

  Future<void> initializeFromDB() async {
    log("Getting Last.FM Keys from DB", name: "Last.FM");
    final apiKey =
        await BloomeeDBService.getApiTokenDB(GlobalStrConsts.lFMApiKey);
    final apiSecret =
        await BloomeeDBService.getApiTokenDB(GlobalStrConsts.lFMSecret);
    final session =
        await BloomeeDBService.getApiTokenDB(GlobalStrConsts.lFMSession);

    if (apiKey != null &&
        apiSecret != null &&
        apiKey.isNotEmpty &&
        apiSecret.isNotEmpty) {
      LastFmAPI.setAPIKey(apiKey);
      LastFmAPI.setAPISecret(apiSecret);
      if (session != null && session.isNotEmpty) {
        LastFmAPI.sessionKey = session;
        LastFmAPI.initialized = true;
        emit(LastdotfmIntialized(
            apiKey: apiKey, apiSecret: apiSecret, sessionKey: session));
      }
    }
    startUpCheck();
    log("Last.FM Keys from DB: $apiKey, $apiSecret, $session", name: "Last.FM");
  }

  Future<void> fetchSessionkey(
      {required String token,
      required String secret,
      required String apiKey}) async {
    try {
      final session = await LastFmAPI.fetchSessionKey(token);
      BloomeeDBService.putApiTokenDB(GlobalStrConsts.lFMSecret, secret, "0");
      BloomeeDBService.putApiTokenDB(GlobalStrConsts.lFMApiKey, apiKey, "0");
      BloomeeDBService.putApiTokenDB(GlobalStrConsts.lFMSession, session, "0");
      log('Session Key: $session', name: 'LastFM API');

      if (session.isNotEmpty && apiKey.isNotEmpty && secret.isNotEmpty) {
        LastFmAPI.sessionKey = session;
        LastFmAPI.initialized = true;
        emit(LastdotfmIntialized(
            apiKey: apiKey, apiSecret: secret, sessionKey: session));
      }
    } catch (e) {
      log("Error: $e", name: "Last.FM");
      emit(LastdotfmFailed(message: e.toString()));
    }
  }

  Future<String> startAuth(
      {required String apiKey, required String secret}) async {
    // Start the authentication process
    LastFmAPI.setAPIKey(apiKey);
    LastFmAPI.setAPISecret(secret);
    final token = await LastFmAPI.fetchRequestToken();
    final url = LastFmAPI.getAuthUrl(token);
    log('Auth URL: $url', name: 'LastFM API');
    launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    return token;
  }

  Future<void> remove() async {
    LastFmAPI.initialized = false;
    LastFmAPI.sessionKey = "";
    LastFmAPI.apiKey = "";
    LastFmAPI.apiSecret = "";
    emit(LastdotfmInitial());
    BloomeeDBService.putApiTokenDB(GlobalStrConsts.lFMSecret, "", "0");
    BloomeeDBService.putApiTokenDB(GlobalStrConsts.lFMApiKey, "", "0");
    BloomeeDBService.putApiTokenDB(GlobalStrConsts.lFMSession, "", "0");
  }

  startUpCheck() async {
    final lastUnScrobbled = await getLFMTrackedCache();
    if (lastUnScrobbled.isNotEmpty) {
      final isSuccess = await scrobbleTrackList(lastUnScrobbled);
      log("Scrobble ${isSuccess ? "success" : "failed"}!", name: "Last.FM");
      if (!isSuccess) {
        lFMCacheTrack(lastUnScrobbled);
      }
    }
  }

  Future<bool> scrobbleTrackList(List<ScrobbleTrack> trackList) async {
    if (LastFmAPI.initialized) {
      try {
        final response = await LastFmAPI.scrobble(trackList);
        log('Scrobble response: $response', name: 'LastFM API');
        return response;
      } catch (e) {
        log('Scrobble failed: $e', name: 'LastFM API');
        lFMCacheTrack(trackList);
      }
    }
    return false;
  }

  Future<bool> scrobble(MediaItemModel mediaItem) async {
    final shouldScrobble = await BloomeeDBService.getSettingBool(
        GlobalStrConsts.lFMScrobbleSetting,
        defaultValue: false);

    final durationMin = mediaItem.duration?.inMinutes ?? 20000;
    final durationSec = mediaItem.duration?.inSeconds ?? 20000;

    final track = ScrobbleTrack(
      artist: mediaItem.artist ?? 'Unknown',
      trackName: mediaItem.title,
      timestamp: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      album: mediaItem.album ?? 'Unknown',
      duration: mediaItem.duration?.inSeconds ?? 0,
      chosenByUser: false,
    );
    if (shouldScrobble ?? false) {
      List<ScrobbleTrack> trackList = await getLFMTrackedCache();
      trackList.add(track);
      try {
        if (LastFmAPI.initialized &&
            mediaItem != mediaItemModelNull &&
            durationMin < 15 &&
            durationSec > 30) {
          final response = await LastFmAPI.scrobble(trackList);
          log('Scrobble response: $response', name: 'LastFM API');
          return response;
        }
      } catch (e) {
        log('Scrobble failed: $e', name: 'LastFM API');
        lFMCacheTrack(trackList);
      }
    }
    return false;
  }

  void lFMCacheTrack(List<ScrobbleTrack> trackList) {
    final trackListMap = trackList.map((e) => e.toJson()).toList();
    BloomeeDBService.getAPICache(GlobalStrConsts.lFMTrackedCache).then((value) {
      if (value != null && value != "null") {
        log("Cache found: ${trackListMap.toString()}", name: "Last.FM");
        final trackList2 = value as List;
        trackList2.addAll(trackListMap);
        BloomeeDBService.putAPICache(
            GlobalStrConsts.lFMTrackedCache, trackList2.toString());
      } else {
        log("No cache found", name: "Last.FM");
        BloomeeDBService.putAPICache(
            GlobalStrConsts.lFMTrackedCache, trackListMap.toString());
      }
    });
  }

  Future<List<ScrobbleTrack>> getLFMTrackedCache() async {
    final trackList =
        await BloomeeDBService.getAPICache(GlobalStrConsts.lFMTrackedCache);
    await BloomeeDBService.putAPICache(GlobalStrConsts.lFMTrackedCache, "null");
    if (trackList != null && trackList.isNotEmpty && trackList != "null") {
      final trackListMap = jsonDecode(trackList) as List;
      List<ScrobbleTrack> trackListObj = [];
      for (var element in trackListMap) {
        trackListObj.add(ScrobbleTrack.fromJson(element));
      }
      return trackListObj;
    }
    return [];
  }
}