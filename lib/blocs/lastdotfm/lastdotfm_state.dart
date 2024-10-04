part of 'lastdotfm_cubit.dart';

sealed class LastdotfmState extends Equatable {
  const LastdotfmState();

  @override
  List<Object> get props => [];
}

final class LastdotfmInitial extends LastdotfmState {}

final class LastdotfmIntialized extends LastdotfmState {
  final String apiKey;
  final String apiSecret;
  final String sessionKey;

  const LastdotfmIntialized({
    required this.apiKey,
    required this.apiSecret,
    required this.sessionKey,
  });

  @override
  List<Object> get props => [apiKey, apiSecret, sessionKey];
}

final class LastdotfmFailed extends LastdotfmState {
  final String message;

  const LastdotfmFailed({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}