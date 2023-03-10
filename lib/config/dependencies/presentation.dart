part of dependencies;

/// This extension of GetIt registers blocs used on the presentation layer to observe app state.
extension PresentationDependenciesRegistryExtension on GetIt {
  Future<void> registerBlocs() async {
    registerFactory(() => SettingsCubit(get()));
    registerFactory(() => AnimeListCubit(get()));
  }
}
