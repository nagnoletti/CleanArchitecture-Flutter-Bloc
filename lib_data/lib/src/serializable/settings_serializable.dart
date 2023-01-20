import 'package:json_annotation/json_annotation.dart';

part 'settings_serializable.g.dart';

@JsonSerializable()
class SettingsSerializable {
  final String? locale;
  final String? brightness;

  SettingsSerializable({required this.locale, required this.brightness});

  factory SettingsSerializable.fromJson(Map<String, dynamic> json) => _$SettingsSerializableFromJson(json);

  Map<String, dynamic> toJson() => _$SettingsSerializableToJson(this);
}
