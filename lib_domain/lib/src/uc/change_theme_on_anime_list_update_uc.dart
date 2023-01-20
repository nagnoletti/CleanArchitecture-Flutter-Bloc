import 'package:domain/src/bloc/anime/anime_list_cubit.dart';
import 'package:domain/src/bloc/settings/settings_cubit.dart';
import 'package:domain/src/entity/settings.dart';

class ChangeThemeOnAnimeListUpdateUC {
  final AnimeListCubit _animeListCubit;
  final SettingsCubit _settingsCubit;

  ChangeThemeOnAnimeListUpdateUC(this._animeListCubit, this._settingsCubit);

  void call(BrightnessPreference pref) {
    _animeListCubit.getAnimes().then((value) => _settingsCubit.changeBrightness(pref));
  }
}
