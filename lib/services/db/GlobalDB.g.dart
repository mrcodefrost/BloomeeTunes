// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GlobalDB.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMediaPlaylistDBCollection on Isar {
  IsarCollection<MediaPlaylistDB> get mediaPlaylistDBs => this.collection();
}

const MediaPlaylistDBSchema = CollectionSchema(
  name: r'MediaPlaylistDB',
  id: 6090471689057609940,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'mediaRanks': PropertySchema(
      id: 1,
      name: r'mediaRanks',
      type: IsarType.longList,
    ),
    r'playlistName': PropertySchema(
      id: 2,
      name: r'playlistName',
      type: IsarType.string,
    )
  },
  estimateSize: _mediaPlaylistDBEstimateSize,
  serialize: _mediaPlaylistDBSerialize,
  deserialize: _mediaPlaylistDBDeserialize,
  deserializeProp: _mediaPlaylistDBDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'mediaItems': LinkSchema(
      id: -3256593681391473623,
      name: r'mediaItems',
      target: r'MediaItemDB',
      single: false,
      linkName: r'mediaInPlaylistsDB',
    )
  },
  embeddedSchemas: {},
  getId: _mediaPlaylistDBGetId,
  getLinks: _mediaPlaylistDBGetLinks,
  attach: _mediaPlaylistDBAttach,
  version: '3.1.0+1',
);

int _mediaPlaylistDBEstimateSize(
  MediaPlaylistDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mediaRanks.length * 8;
  bytesCount += 3 + object.playlistName.length * 3;
  return bytesCount;
}

void _mediaPlaylistDBSerialize(
  MediaPlaylistDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeLongList(offsets[1], object.mediaRanks);
  writer.writeString(offsets[2], object.playlistName);
}

MediaPlaylistDB _mediaPlaylistDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaPlaylistDB(
    playlistName: reader.readString(offsets[2]),
  );
  object.mediaRanks = reader.readLongList(offsets[1]) ?? [];
  return object;
}

P _mediaPlaylistDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mediaPlaylistDBGetId(MediaPlaylistDB object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _mediaPlaylistDBGetLinks(MediaPlaylistDB object) {
  return [object.mediaItems];
}

void _mediaPlaylistDBAttach(
    IsarCollection<dynamic> col, Id id, MediaPlaylistDB object) {
  object.mediaItems
      .attach(col, col.isar.collection<MediaItemDB>(), r'mediaItems', id);
}

extension MediaPlaylistDBQueryWhereSort
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QWhere> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MediaPlaylistDBQueryWhere
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QWhereClause> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MediaPlaylistDBQueryFilter
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QFilterCondition> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaRanks',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaRanks',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaRanks',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaRanks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaRanks',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaRanks',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaRanks',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaRanks',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaRanks',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaRanksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'mediaRanks',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'playlistName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'playlistName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'playlistName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'playlistName',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      playlistNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'playlistName',
        value: '',
      ));
    });
  }
}

extension MediaPlaylistDBQueryObject
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QFilterCondition> {}

extension MediaPlaylistDBQueryLinks
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QFilterCondition> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItems(FilterQuery<MediaItemDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'mediaItems');
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaItems', length, true, length, true);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaItems', 0, true, 0, true);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaItems', 0, false, 999999, true);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaItems', 0, true, length, include);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaItems', length, include, 999999, true);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterFilterCondition>
      mediaItemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'mediaItems', lower, includeLower, upper, includeUpper);
    });
  }
}

extension MediaPlaylistDBQuerySortBy
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QSortBy> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      sortByPlaylistName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.asc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      sortByPlaylistNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.desc);
    });
  }
}

extension MediaPlaylistDBQuerySortThenBy
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QSortThenBy> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      thenByPlaylistName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.asc);
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QAfterSortBy>
      thenByPlaylistNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'playlistName', Sort.desc);
    });
  }
}

extension MediaPlaylistDBQueryWhereDistinct
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QDistinct> {
  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QDistinct>
      distinctByMediaRanks() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaRanks');
    });
  }

  QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QDistinct>
      distinctByPlaylistName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'playlistName', caseSensitive: caseSensitive);
    });
  }
}

extension MediaPlaylistDBQueryProperty
    on QueryBuilder<MediaPlaylistDB, MediaPlaylistDB, QQueryProperty> {
  QueryBuilder<MediaPlaylistDB, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<MediaPlaylistDB, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<MediaPlaylistDB, List<int>, QQueryOperations>
      mediaRanksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaRanks');
    });
  }

  QueryBuilder<MediaPlaylistDB, String, QQueryOperations>
      playlistNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'playlistName');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMediaItemDBCollection on Isar {
  IsarCollection<MediaItemDB> get mediaItemDBs => this.collection();
}

const MediaItemDBSchema = CollectionSchema(
  name: r'MediaItemDB',
  id: 7205399312875226514,
  properties: {
    r'album': PropertySchema(
      id: 0,
      name: r'album',
      type: IsarType.string,
    ),
    r'artURL': PropertySchema(
      id: 1,
      name: r'artURL',
      type: IsarType.string,
    ),
    r'artist': PropertySchema(
      id: 2,
      name: r'artist',
      type: IsarType.string,
    ),
    r'duration': PropertySchema(
      id: 3,
      name: r'duration',
      type: IsarType.long,
    ),
    r'genre': PropertySchema(
      id: 4,
      name: r'genre',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 5,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isLiked': PropertySchema(
      id: 6,
      name: r'isLiked',
      type: IsarType.bool,
    ),
    r'language': PropertySchema(
      id: 7,
      name: r'language',
      type: IsarType.string,
    ),
    r'mediaID': PropertySchema(
      id: 8,
      name: r'mediaID',
      type: IsarType.string,
    ),
    r'permaURL': PropertySchema(
      id: 9,
      name: r'permaURL',
      type: IsarType.string,
    ),
    r'source': PropertySchema(
      id: 10,
      name: r'source',
      type: IsarType.string,
    ),
    r'streamingURL': PropertySchema(
      id: 11,
      name: r'streamingURL',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 12,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _mediaItemDBEstimateSize,
  serialize: _mediaItemDBSerialize,
  deserialize: _mediaItemDBDeserialize,
  deserializeProp: _mediaItemDBDeserializeProp,
  idName: r'id',
  indexes: {
    r'title': IndexSchema(
      id: -7636685945352118059,
      name: r'title',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'title',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'mediaInPlaylistsDB': LinkSchema(
      id: 6308841877349556711,
      name: r'mediaInPlaylistsDB',
      target: r'MediaPlaylistDB',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _mediaItemDBGetId,
  getLinks: _mediaItemDBGetLinks,
  attach: _mediaItemDBAttach,
  version: '3.1.0+1',
);

int _mediaItemDBEstimateSize(
  MediaItemDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.album.length * 3;
  bytesCount += 3 + object.artURL.length * 3;
  bytesCount += 3 + object.artist.length * 3;
  bytesCount += 3 + object.genre.length * 3;
  bytesCount += 3 + object.language.length * 3;
  bytesCount += 3 + object.mediaID.length * 3;
  bytesCount += 3 + object.permaURL.length * 3;
  {
    final value = object.source;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.streamingURL.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _mediaItemDBSerialize(
  MediaItemDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.album);
  writer.writeString(offsets[1], object.artURL);
  writer.writeString(offsets[2], object.artist);
  writer.writeLong(offsets[3], object.duration);
  writer.writeString(offsets[4], object.genre);
  writer.writeLong(offsets[5], object.hashCode);
  writer.writeBool(offsets[6], object.isLiked);
  writer.writeString(offsets[7], object.language);
  writer.writeString(offsets[8], object.mediaID);
  writer.writeString(offsets[9], object.permaURL);
  writer.writeString(offsets[10], object.source);
  writer.writeString(offsets[11], object.streamingURL);
  writer.writeString(offsets[12], object.title);
}

MediaItemDB _mediaItemDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaItemDB(
    album: reader.readString(offsets[0]),
    artURL: reader.readString(offsets[1]),
    artist: reader.readString(offsets[2]),
    duration: reader.readLongOrNull(offsets[3]),
    genre: reader.readString(offsets[4]),
    id: id,
    isLiked: reader.readBool(offsets[6]),
    language: reader.readString(offsets[7]),
    mediaID: reader.readString(offsets[8]),
    permaURL: reader.readString(offsets[9]),
    source: reader.readStringOrNull(offsets[10]),
    streamingURL: reader.readString(offsets[11]),
    title: reader.readString(offsets[12]),
  );
  return object;
}

P _mediaItemDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _mediaItemDBGetId(MediaItemDB object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _mediaItemDBGetLinks(MediaItemDB object) {
  return [object.mediaInPlaylistsDB];
}

void _mediaItemDBAttach(
    IsarCollection<dynamic> col, Id id, MediaItemDB object) {
  object.id = id;
  object.mediaInPlaylistsDB.attach(
      col, col.isar.collection<MediaPlaylistDB>(), r'mediaInPlaylistsDB', id);
}

extension MediaItemDBQueryWhereSort
    on QueryBuilder<MediaItemDB, MediaItemDB, QWhere> {
  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MediaItemDBQueryWhere
    on QueryBuilder<MediaItemDB, MediaItemDB, QWhereClause> {
  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> titleEqualTo(
      String title) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'title',
        value: [title],
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterWhereClause> titleNotEqualTo(
      String title) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [],
              upper: [title],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [title],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [title],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'title',
              lower: [],
              upper: [title],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MediaItemDBQueryFilter
    on QueryBuilder<MediaItemDB, MediaItemDB, QFilterCondition> {
  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'album',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      albumGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'album',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'album',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'album',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'album',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'album',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'album',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'album',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> albumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'album',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      albumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'album',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artURLEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artURLGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'artURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artURLLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'artURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artURLBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'artURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'artURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'artURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artURLContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'artURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artURLMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'artURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artURL',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'artURL',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artistEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artistGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artistLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artistBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'artist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artistStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artistEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artistContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> artistMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'artist',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artistIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artist',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      artistIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'artist',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      durationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'duration',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      durationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'duration',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> durationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      durationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      durationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> durationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      genreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> genreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genre',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      genreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'genre',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> isLikedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLiked',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> languageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> mediaIDEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaIDGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> mediaIDLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> mediaIDBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaIDStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mediaID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> mediaIDEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mediaID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> mediaIDContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mediaID',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> mediaIDMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mediaID',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaIDIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaID',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaIDIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mediaID',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> permaURLEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'permaURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'permaURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'permaURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> permaURLBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'permaURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'permaURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'permaURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'permaURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> permaURLMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'permaURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'permaURL',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      permaURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'permaURL',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      sourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      sourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'source',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      sourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> sourceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'source',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamingURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streamingURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streamingURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streamingURL',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streamingURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streamingURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streamingURL',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streamingURL',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streamingURL',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      streamingURLIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streamingURL',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension MediaItemDBQueryObject
    on QueryBuilder<MediaItemDB, MediaItemDB, QFilterCondition> {}

extension MediaItemDBQueryLinks
    on QueryBuilder<MediaItemDB, MediaItemDB, QFilterCondition> {
  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDB(FilterQuery<MediaPlaylistDB> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'mediaInPlaylistsDB');
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDBLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'mediaInPlaylistsDB', length, true, length, true);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDBIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaInPlaylistsDB', 0, true, 0, true);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDBIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaInPlaylistsDB', 0, false, 999999, true);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDBLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mediaInPlaylistsDB', 0, true, length, include);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDBLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'mediaInPlaylistsDB', length, include, 999999, true);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterFilterCondition>
      mediaInPlaylistsDBLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'mediaInPlaylistsDB', lower, includeLower, upper, includeUpper);
    });
  }
}

extension MediaItemDBQuerySortBy
    on QueryBuilder<MediaItemDB, MediaItemDB, QSortBy> {
  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByAlbum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'album', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByAlbumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'album', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByArtURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artURL', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByArtURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artURL', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByArtist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByArtistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByIsLiked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByIsLikedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByMediaID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaID', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByMediaIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaID', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByPermaURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'permaURL', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByPermaURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'permaURL', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortBySourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByStreamingURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamingURL', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy>
      sortByStreamingURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamingURL', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MediaItemDBQuerySortThenBy
    on QueryBuilder<MediaItemDB, MediaItemDB, QSortThenBy> {
  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByAlbum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'album', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByAlbumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'album', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByArtURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artURL', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByArtURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artURL', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByArtist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByArtistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByIsLiked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByIsLikedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByMediaID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaID', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByMediaIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaID', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByPermaURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'permaURL', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByPermaURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'permaURL', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenBySource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenBySourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'source', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByStreamingURL() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamingURL', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy>
      thenByStreamingURLDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streamingURL', Sort.desc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension MediaItemDBQueryWhereDistinct
    on QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> {
  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByAlbum(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'album', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByArtURL(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'artURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByArtist(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'artist', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duration');
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByGenre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByIsLiked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isLiked');
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByMediaID(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaID', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByPermaURL(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'permaURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'source', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByStreamingURL(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streamingURL', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MediaItemDB, MediaItemDB, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension MediaItemDBQueryProperty
    on QueryBuilder<MediaItemDB, MediaItemDB, QQueryProperty> {
  QueryBuilder<MediaItemDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> albumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'album');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> artURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'artURL');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> artistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'artist');
    });
  }

  QueryBuilder<MediaItemDB, int?, QQueryOperations> durationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duration');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> genreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genre');
    });
  }

  QueryBuilder<MediaItemDB, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<MediaItemDB, bool, QQueryOperations> isLikedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLiked');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> mediaIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaID');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> permaURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'permaURL');
    });
  }

  QueryBuilder<MediaItemDB, String?, QQueryOperations> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'source');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> streamingURLProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streamingURL');
    });
  }

  QueryBuilder<MediaItemDB, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppSettingsStrDBCollection on Isar {
  IsarCollection<AppSettingsStrDB> get appSettingsStrDBs => this.collection();
}

const AppSettingsStrDBSchema = CollectionSchema(
  name: r'AppSettingsStrDB',
  id: -9186585785377851692,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'settingName': PropertySchema(
      id: 1,
      name: r'settingName',
      type: IsarType.string,
    ),
    r'settingValue': PropertySchema(
      id: 2,
      name: r'settingValue',
      type: IsarType.string,
    )
  },
  estimateSize: _appSettingsStrDBEstimateSize,
  serialize: _appSettingsStrDBSerialize,
  deserialize: _appSettingsStrDBDeserialize,
  deserializeProp: _appSettingsStrDBDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appSettingsStrDBGetId,
  getLinks: _appSettingsStrDBGetLinks,
  attach: _appSettingsStrDBAttach,
  version: '3.1.0+1',
);

int _appSettingsStrDBEstimateSize(
  AppSettingsStrDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.settingName.length * 3;
  bytesCount += 3 + object.settingValue.length * 3;
  return bytesCount;
}

void _appSettingsStrDBSerialize(
  AppSettingsStrDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeString(offsets[1], object.settingName);
  writer.writeString(offsets[2], object.settingValue);
}

AppSettingsStrDB _appSettingsStrDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppSettingsStrDB(
    settingName: reader.readString(offsets[1]),
    settingValue: reader.readString(offsets[2]),
  );
  return object;
}

P _appSettingsStrDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appSettingsStrDBGetId(AppSettingsStrDB object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _appSettingsStrDBGetLinks(AppSettingsStrDB object) {
  return [];
}

void _appSettingsStrDBAttach(
    IsarCollection<dynamic> col, Id id, AppSettingsStrDB object) {}

extension AppSettingsStrDBQueryWhereSort
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QWhere> {
  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppSettingsStrDBQueryWhere
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QWhereClause> {
  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppSettingsStrDBQueryFilter
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QFilterCondition> {
  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'settingName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'settingName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'settingName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'settingValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'settingValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'settingValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'settingValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'settingValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'settingValue',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'settingValue',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingValue',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterFilterCondition>
      settingValueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'settingValue',
        value: '',
      ));
    });
  }
}

extension AppSettingsStrDBQueryObject
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QFilterCondition> {}

extension AppSettingsStrDBQueryLinks
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QFilterCondition> {}

extension AppSettingsStrDBQuerySortBy
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QSortBy> {
  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      sortBySettingName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      sortBySettingNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      sortBySettingValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      sortBySettingValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.desc);
    });
  }
}

extension AppSettingsStrDBQuerySortThenBy
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QSortThenBy> {
  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenBySettingName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenBySettingNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenBySettingValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QAfterSortBy>
      thenBySettingValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.desc);
    });
  }
}

extension AppSettingsStrDBQueryWhereDistinct
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QDistinct> {
  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QDistinct>
      distinctBySettingName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'settingName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QDistinct>
      distinctBySettingValue({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'settingValue', caseSensitive: caseSensitive);
    });
  }
}

extension AppSettingsStrDBQueryProperty
    on QueryBuilder<AppSettingsStrDB, AppSettingsStrDB, QQueryProperty> {
  QueryBuilder<AppSettingsStrDB, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<AppSettingsStrDB, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<AppSettingsStrDB, String, QQueryOperations>
      settingNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'settingName');
    });
  }

  QueryBuilder<AppSettingsStrDB, String, QQueryOperations>
      settingValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'settingValue');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppSettingsBoolDBCollection on Isar {
  IsarCollection<AppSettingsBoolDB> get appSettingsBoolDBs => this.collection();
}

const AppSettingsBoolDBSchema = CollectionSchema(
  name: r'AppSettingsBoolDB',
  id: -3642544654543208017,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'settingName': PropertySchema(
      id: 1,
      name: r'settingName',
      type: IsarType.string,
    ),
    r'settingValue': PropertySchema(
      id: 2,
      name: r'settingValue',
      type: IsarType.bool,
    )
  },
  estimateSize: _appSettingsBoolDBEstimateSize,
  serialize: _appSettingsBoolDBSerialize,
  deserialize: _appSettingsBoolDBDeserialize,
  deserializeProp: _appSettingsBoolDBDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appSettingsBoolDBGetId,
  getLinks: _appSettingsBoolDBGetLinks,
  attach: _appSettingsBoolDBAttach,
  version: '3.1.0+1',
);

int _appSettingsBoolDBEstimateSize(
  AppSettingsBoolDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.settingName.length * 3;
  return bytesCount;
}

void _appSettingsBoolDBSerialize(
  AppSettingsBoolDB object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeString(offsets[1], object.settingName);
  writer.writeBool(offsets[2], object.settingValue);
}

AppSettingsBoolDB _appSettingsBoolDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppSettingsBoolDB(
    settingName: reader.readString(offsets[1]),
    settingValue: reader.readBool(offsets[2]),
  );
  return object;
}

P _appSettingsBoolDBDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appSettingsBoolDBGetId(AppSettingsBoolDB object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _appSettingsBoolDBGetLinks(
    AppSettingsBoolDB object) {
  return [];
}

void _appSettingsBoolDBAttach(
    IsarCollection<dynamic> col, Id id, AppSettingsBoolDB object) {}

extension AppSettingsBoolDBQueryWhereSort
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QWhere> {
  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppSettingsBoolDBQueryWhere
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QWhereClause> {
  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppSettingsBoolDBQueryFilter
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QFilterCondition> {
  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'settingName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'settingName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'settingName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'settingName',
        value: '',
      ));
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterFilterCondition>
      settingValueEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'settingValue',
        value: value,
      ));
    });
  }
}

extension AppSettingsBoolDBQueryObject
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QFilterCondition> {}

extension AppSettingsBoolDBQueryLinks
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QFilterCondition> {}

extension AppSettingsBoolDBQuerySortBy
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QSortBy> {
  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      sortBySettingName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      sortBySettingNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      sortBySettingValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      sortBySettingValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.desc);
    });
  }
}

extension AppSettingsBoolDBQuerySortThenBy
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QSortThenBy> {
  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenBySettingName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenBySettingNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingName', Sort.desc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenBySettingValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.asc);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QAfterSortBy>
      thenBySettingValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'settingValue', Sort.desc);
    });
  }
}

extension AppSettingsBoolDBQueryWhereDistinct
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QDistinct> {
  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QDistinct>
      distinctBySettingName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'settingName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QDistinct>
      distinctBySettingValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'settingValue');
    });
  }
}

extension AppSettingsBoolDBQueryProperty
    on QueryBuilder<AppSettingsBoolDB, AppSettingsBoolDB, QQueryProperty> {
  QueryBuilder<AppSettingsBoolDB, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<AppSettingsBoolDB, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<AppSettingsBoolDB, String, QQueryOperations>
      settingNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'settingName');
    });
  }

  QueryBuilder<AppSettingsBoolDB, bool, QQueryOperations>
      settingValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'settingValue');
    });
  }
}