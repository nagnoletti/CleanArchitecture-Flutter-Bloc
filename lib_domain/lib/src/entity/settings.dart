import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

enum BrightnessPreference {
  light,
  dark;
}

enum LocalePreference {
  en,
  it;

  static LocalePreference get fallback => LocalePreference.en;
}

@freezed
class Settings with _$Settings {
  const factory Settings({
    required LocalePreference locale,
    required BrightnessPreference? brightness,
  }) = _Settings;
}
