
import 'package:domain/src/entity/settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_cubit_state.freezed.dart';

@freezed
class SettingsCubitState with _$SettingsCubitState {
  SettingsCubitState._();

  factory SettingsCubitState.tbd() = _TBDSettingsCubitState;
  factory SettingsCubitState.ready(Settings value) = _ReadySettingsCubitState;
}