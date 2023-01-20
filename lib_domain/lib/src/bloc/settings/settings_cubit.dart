import 'package:domain/domain.dart';
import 'package:domain/src/bloc/safe_cubit.dart';
import 'package:domain/src/bloc/settings/settings_cubit_state.dart';

class SettingsCubit extends SafeCubit<SettingsCubitState> {
  final SettingsRepository _repository;

  SettingsCubit(this._repository) : super(SettingsCubitState.tbd()) {
    _repository.fetchSettings().then((value) => emit(SettingsCubitState.ready(value)));
  }

  void _set(Settings Function(Settings) configure) => _repository.fetchSettings().then((value) {
        final newValue = configure(value);
        _repository.updateSettings(newValue);
        emit(SettingsCubitState.ready(newValue));
      });

  void changeLocale(LocalePreference locale) => _set((s) => s.copyWith(locale: locale));

  void changeBrightness(BrightnessPreference? brightness) => _set((s) => s.copyWith(brightness: brightness));
}
