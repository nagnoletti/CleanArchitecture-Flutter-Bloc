part of dependencies;

/// This extension of GetIt registers repositories implementations to the domain layer.
extension RepositoriesRegistryExtension on GetIt {
  Future<void> registerRepositories() async {
    registerLazySingleton<SettingsRepository>(() => SettingsRepositoryImpl(get()));
    registerLazySingleton<AnimeRepository>(() => AnimeRepositoryImpl(get()));
  }
}