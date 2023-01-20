import 'package:json_annotation/json_annotation.dart';

part 'anime_serializable.g.dart';

@JsonSerializable(createToJson: false)
class AnimeSerializable {
  final String? id;
  final String? type;
  final AnimeLinksSerializable? links;
  final AnimeAttributesSerializable? attributes;
  final RelationshipsMapSerializable? relationships;

  AnimeSerializable({
    this.id,
    this.type,
    this.links,
    this.attributes,
    this.relationships,
  });

  factory AnimeSerializable.fromJson(Map<String, dynamic> json) => _$AnimeSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class AnimeAttributesSerializable {
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? slug;
  final String? synopsis;
  final String? description;
  final int? coverImageTopOffset;
  final TitlesSerializable? titles;
  final String? canonicalTitle;
  final List<String>? abbreviatedTitles;
  final String? averageRating;
  final Map<String, String>? ratingFrequencies;
  final int? userCount;
  final int? favoritesCount;
  final DateTime? startDate;
  final DateTime? endDate;
  final dynamic nextRelease;
  final int? popularityRank;
  final int? ratingRank;
  final String? ageRating;
  final String? ageRatingGuide;
  final String? subtype;
  final String? status;
  final dynamic tba;
  final PosterImageSerializable? posterImage;
  final CoverImageSerializable? coverImage;
  final int? episodeCount;
  final int? episodeLength;
  final int? totalLength;
  final String? youtubeVideoId;
  final String? showType;
  final bool? nsfw;

  AnimeAttributesSerializable({
    this.createdAt,
    this.updatedAt,
    this.slug,
    this.synopsis,
    this.description,
    this.coverImageTopOffset,
    this.titles,
    this.canonicalTitle,
    this.abbreviatedTitles,
    this.averageRating,
    this.ratingFrequencies,
    this.userCount,
    this.favoritesCount,
    this.startDate,
    this.endDate,
    this.nextRelease,
    this.popularityRank,
    this.ratingRank,
    this.ageRating,
    this.ageRatingGuide,
    this.subtype,
    this.status,
    this.tba,
    this.posterImage,
    this.coverImage,
    this.episodeCount,
    this.episodeLength,
    this.totalLength,
    this.youtubeVideoId,
    this.showType,
    this.nsfw,
  });

  factory AnimeAttributesSerializable.fromJson(Map<String, dynamic> json) => _$AnimeAttributesSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class CoverImageSerializable {
  final String? tiny;
  final String? large;
  final String? small;
  final String? original;
  final MetaSerializable? meta;

  CoverImageSerializable({
    this.tiny,
    this.large,
    this.small,
    this.original,
    this.meta,
  });

  factory CoverImageSerializable.fromJson(Map<String, dynamic> json) => _$CoverImageSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class MetaSerializable {
  final DimensionsSerializable? dimensions;

  MetaSerializable({
    this.dimensions,
  });

  factory MetaSerializable.fromJson(Map<String, dynamic> json) => _$MetaSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class DimensionsSerializable {
  final SizeSerializable? tiny;
  final SizeSerializable? large;
  final SizeSerializable? small;
  final SizeSerializable? medium;

  DimensionsSerializable({
    this.tiny,
    this.large,
    this.small,
    this.medium,
  });

  factory DimensionsSerializable.fromJson(Map<String, dynamic> json) => _$DimensionsSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class SizeSerializable {
  final int? width;
  final int? height;

  SizeSerializable({
    this.width,
    this.height,
  });

  factory SizeSerializable.fromJson(Map<String, dynamic> json) => _$SizeSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class PosterImageSerializable {
  final String? tiny;
  final String? large;
  final String? small;
  final String? medium;
  final String? original;
  final MetaSerializable? meta;

  PosterImageSerializable({
    this.tiny,
    this.large,
    this.small,
    this.medium,
    this.original,
    this.meta,
  });

  factory PosterImageSerializable.fromJson(Map<String, dynamic> json) => _$PosterImageSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class TitlesSerializable {
  @JsonKey(name: 'en')
  final String? en;
  @JsonKey(name: 'en_jp')
  final String? enJp;
  @JsonKey(name: 'ja_jp')
  final String? jaJp;

  TitlesSerializable({
    this.en,
    this.enJp,
    this.jaJp,
  });

  factory TitlesSerializable.fromJson(Map<String, dynamic> json) => _$TitlesSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class AnimeLinksSerializable {
  final String? self;

  AnimeLinksSerializable({
    this.self,
  });

  factory AnimeLinksSerializable.fromJson(Map<String, dynamic> json) => _$AnimeLinksSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class RelationshipsMapSerializable {
  final RelationshipSerializable? self;
  final RelationshipSerializable? related;

  RelationshipsMapSerializable({
    this.self,
    this.related,
});

  factory RelationshipsMapSerializable.fromJson(Map<String, dynamic> json) => _$RelationshipsMapSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class RelationshipSerializable {
  final RelationshipLinksSerializable? links;

  RelationshipSerializable({
    this.links,
  });

  factory RelationshipSerializable.fromJson(Map<String, dynamic> json) => _$RelationshipSerializableFromJson(json);
}

@JsonSerializable(createToJson: false)
class RelationshipLinksSerializable {
  final String? self;
  final String? related;

  RelationshipLinksSerializable({
    this.self,
    this.related,
  });

  factory RelationshipLinksSerializable.fromJson(Map<String, dynamic> json) => _$RelationshipLinksSerializableFromJson(json);
}
