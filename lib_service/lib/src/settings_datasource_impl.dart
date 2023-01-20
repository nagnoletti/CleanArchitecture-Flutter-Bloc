import 'package:data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsDatasourceImpl extends SettingsDatasource {
  final SharedPreferences sharedPreferences;

  SettingsDatasourceImpl(this.sharedPreferences);

  static const kLocale = 'locale';
  static const kBrightness = 'brightness';

  @override
  Future<SettingsSerializable> fetchSettings() {
    String? locale = sharedPreferences.getString(kLocale);
    String? brightness = sharedPreferences.getString(kBrightness);
    return Future.value(SettingsSerializable(locale: locale, brightness: brightness));
  }

  @override
  Future<void> updateSettings(SettingsSerializable settings) async {
    if (settings.locale != null) {
      await sharedPreferences.setString(kLocale, settings.locale!);
    }

    if (settings.brightness != null) {
      await sharedPreferences.setString(kBrightness, settings.brightness!);
    }
  }
}
