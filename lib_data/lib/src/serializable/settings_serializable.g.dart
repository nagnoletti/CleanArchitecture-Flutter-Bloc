// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_serializable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingsSerializable _$SettingsSerializableFromJson(
        Map<String, dynamic> json) =>
    SettingsSerializable(
      locale: json['locale'] as String?,
      brightness: json['brightness'] as String?,
    );

Map<String, dynamic> _$SettingsSerializableToJson(
        SettingsSerializable instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'brightness': instance.brightness,
    };
