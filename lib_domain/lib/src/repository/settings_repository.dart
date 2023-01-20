import 'package:domain/src/entity/settings.dart';

abstract class SettingsRepository {
  Future<void> updateSettings(Settings settings);

  Future<Settings> fetchSettings();
}
