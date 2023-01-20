import 'package:data/src/serializable/settings_serializable.dart';

abstract class SettingsDatasource {
  Future<void> updateSettings(SettingsSerializable settings);

  Future<SettingsSerializable> fetchSettings();
}
