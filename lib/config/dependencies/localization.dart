part of dependencies;

/// This extension of GetIt provides a LocalizationDelegate for locales [Env.supportedLocales] and providing a fallback to [Env.fallbackLocale].
extension LocalizationDelegateRegistryExtension on GetIt {
  Future<void> registerLocalizationDelegate(Env env) async {
    // TODO preferences
    final delegate = await LocalizationDelegate.create(
      fallbackLocale: env.fallbackLocale,
      supportedLocales: env.supportedLocales,
      basePath: 'assets/translations',
    );
    registerFactory<LocalizationDelegate>(() => delegate);
  }
}
