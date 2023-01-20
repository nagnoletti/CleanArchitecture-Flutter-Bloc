part of dependencies;

/// This extension of GetIt registers remote and local datasource-s depending on [Env].
/// The single [Dio] client is created starting from [Env.baseUrl], to be used in every remote datasource.
extension DataSourcesRegistryExtension on GetIt {
  Future<void> registerDataSources(Env env) async {
    /// Startup dependencies
    final client = Dio(
      BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
      ),
    )..interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: false,
          maxWidth: 90,
        ),
      );

    registerSingleton<SharedPreferences>(await SharedPreferences.getInstance());

    /// DataSource-s
    registerLazySingleton<SettingsDatasource>(() => SettingsDatasourceImpl(get()));

    registerLazySingleton<AnimeDatasource>(() => AnimeDatasourceImpl(AnimeAPI(client, baseUrl: env.baseUrl)));
  }
}
