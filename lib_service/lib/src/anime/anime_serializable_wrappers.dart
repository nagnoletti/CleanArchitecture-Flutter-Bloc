import 'package:data/data.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(createToJson: false, createFactory: false)
class AnimeSerializableWrapper {
  final AnimeSerializable data;

  AnimeSerializableWrapper(this.data);

  factory AnimeSerializableWrapper.fromJson(Map<String, dynamic> json) =>
      AnimeSerializableWrapper(AnimeSerializable.fromJson(json['data'] as Map<String, dynamic>));
}

@JsonSerializable(createToJson: false, createFactory: false)
class AnimeSerializableListWrapper {
  final List<AnimeSerializable> data;

  AnimeSerializableListWrapper(this.data);

  factory AnimeSerializableListWrapper.fromJson(Map<String, dynamic> json) => AnimeSerializableListWrapper(
        (json['data'] as List<dynamic>).map((e) => AnimeSerializable.fromJson(e as Map<String, dynamic>)).toList(),
      );
}
