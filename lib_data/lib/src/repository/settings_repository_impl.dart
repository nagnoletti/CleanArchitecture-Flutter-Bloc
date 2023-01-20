import 'package:data/data.dart';
import 'package:data/src/mapping/settings_mapper.dart';
import 'package:domain/domain.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsDatasource _localDatasource;

  SettingsRepositoryImpl(this._localDatasource);

  @override
  Future<Settings> fetchSettings() {
    return _localDatasource.fetchSettings().then((value) => settingsMapper.mapEntity(value));
  }

  @override
  Future<void> updateSettings(Settings value) {
    return _localDatasource.updateSettings(settingsMapper.mapSerializable(value));
  }
}
