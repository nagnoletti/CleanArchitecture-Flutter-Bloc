import 'package:collection/collection.dart';
import 'package:data/data.dart';
import 'package:data/src/mapping/data_mapper.dart';
import 'package:domain/domain.dart';

final settingsMapper = DualDataMapper<SettingsSerializable, Settings>(
  mapEntity: (serializable, _) => Settings(
    locale: LocalePreference.values.firstWhereOrNull((e) => e.name == serializable.locale) ?? LocalePreference.fallback,
    brightness: BrightnessPreference.values.firstWhereOrNull((e) => e.name == serializable.brightness),
  ),
  mapSerializable: (entity, _) => SettingsSerializable(
    locale: entity.locale.name,
    brightness: entity.brightness?.name,
  ),
);
