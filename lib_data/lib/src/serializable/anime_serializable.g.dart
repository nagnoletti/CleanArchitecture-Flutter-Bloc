// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeSerializable _$AnimeSerializableFromJson(Map<String, dynamic> json) =>
    AnimeSerializable(
      id: json['id'] as String?,
      type: json['type'] as String?,
      links: json['links'] == null
          ? null
          : AnimeLinksSerializable.fromJson(
              json['links'] as Map<String, dynamic>),
      attributes: json['attributes'] == null
          ? null
          : AnimeAttributesSerializable.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : RelationshipsMapSerializable.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

AnimeAttributesSerializable _$AnimeAttributesSerializableFromJson(
        Map<String, dynamic> json) =>
    AnimeAttributesSerializable(
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      slug: json['slug'] as String?,
      synopsis: json['synopsis'] as String?,
      description: json['description'] as String?,
      coverImageTopOffset: json['coverImageTopOffset'] as int?,
      titles: json['titles'] == null
          ? null
          : TitlesSerializable.fromJson(json['titles'] as Map<String, dynamic>),
      canonicalTitle: json['canonicalTitle'] as String?,
      abbreviatedTitles: (json['abbreviatedTitles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      averageRating: json['averageRating'] as String?,
      ratingFrequencies:
          (json['ratingFrequencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      userCount: json['userCount'] as int?,
      favoritesCount: json['favoritesCount'] as int?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      nextRelease: json['nextRelease'],
      popularityRank: json['popularityRank'] as int?,
      ratingRank: json['ratingRank'] as int?,
      ageRating: json['ageRating'] as String?,
      ageRatingGuide: json['ageRatingGuide'] as String?,
      subtype: json['subtype'] as String?,
      status: json['status'] as String?,
      tba: json['tba'],
      posterImage: json['posterImage'] == null
          ? null
          : PosterImageSerializable.fromJson(
              json['posterImage'] as Map<String, dynamic>),
      coverImage: json['coverImage'] == null
          ? null
          : CoverImageSerializable.fromJson(
              json['coverImage'] as Map<String, dynamic>),
      episodeCount: json['episodeCount'] as int?,
      episodeLength: json['episodeLength'] as int?,
      totalLength: json['totalLength'] as int?,
      youtubeVideoId: json['youtubeVideoId'] as String?,
      showType: json['showType'] as String?,
      nsfw: json['nsfw'] as bool?,
    );

CoverImageSerializable _$CoverImageSerializableFromJson(
        Map<String, dynamic> json) =>
    CoverImageSerializable(
      tiny: json['tiny'] as String?,
      large: json['large'] as String?,
      small: json['small'] as String?,
      original: json['original'] as String?,
      meta: json['meta'] == null
          ? null
          : MetaSerializable.fromJson(json['meta'] as Map<String, dynamic>),
    );

MetaSerializable _$MetaSerializableFromJson(Map<String, dynamic> json) =>
    MetaSerializable(
      dimensions: json['dimensions'] == null
          ? null
          : DimensionsSerializable.fromJson(
              json['dimensions'] as Map<String, dynamic>),
    );

DimensionsSerializable _$DimensionsSerializableFromJson(
        Map<String, dynamic> json) =>
    DimensionsSerializable(
      tiny: json['tiny'] == null
          ? null
          : SizeSerializable.fromJson(json['tiny'] as Map<String, dynamic>),
      large: json['large'] == null
          ? null
          : SizeSerializable.fromJson(json['large'] as Map<String, dynamic>),
      small: json['small'] == null
          ? null
          : SizeSerializable.fromJson(json['small'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : SizeSerializable.fromJson(json['medium'] as Map<String, dynamic>),
    );

SizeSerializable _$SizeSerializableFromJson(Map<String, dynamic> json) =>
    SizeSerializable(
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

PosterImageSerializable _$PosterImageSerializableFromJson(
        Map<String, dynamic> json) =>
    PosterImageSerializable(
      tiny: json['tiny'] as String?,
      large: json['large'] as String?,
      small: json['small'] as String?,
      medium: json['medium'] as String?,
      original: json['original'] as String?,
      meta: json['meta'] == null
          ? null
          : MetaSerializable.fromJson(json['meta'] as Map<String, dynamic>),
    );

TitlesSerializable _$TitlesSerializableFromJson(Map<String, dynamic> json) =>
    TitlesSerializable(
      en: json['en'] as String?,
      enJp: json['en_jp'] as String?,
      jaJp: json['ja_jp'] as String?,
    );

AnimeLinksSerializable _$AnimeLinksSerializableFromJson(
        Map<String, dynamic> json) =>
    AnimeLinksSerializable(
      self: json['self'] as String?,
    );

RelationshipsMapSerializable _$RelationshipsMapSerializableFromJson(
        Map<String, dynamic> json) =>
    RelationshipsMapSerializable(
      self: json['self'] == null
          ? null
          : RelationshipSerializable.fromJson(
              json['self'] as Map<String, dynamic>),
      related: json['related'] == null
          ? null
          : RelationshipSerializable.fromJson(
              json['related'] as Map<String, dynamic>),
    );

RelationshipSerializable _$RelationshipSerializableFromJson(
        Map<String, dynamic> json) =>
    RelationshipSerializable(
      links: json['links'] == null
          ? null
          : RelationshipLinksSerializable.fromJson(
              json['links'] as Map<String, dynamic>),
    );

RelationshipLinksSerializable _$RelationshipLinksSerializableFromJson(
        Map<String, dynamic> json) =>
    RelationshipLinksSerializable(
      self: json['self'] as String?,
      related: json['related'] as String?,
    );
