const List<String> _supportedLocales = ['it', 'en'];
String _defaultLocale = _supportedLocales[0];

abstract class Env {
  String get appName;

  String get baseUrl;

  List<String> get supportedLocales;

  String get fallbackLocale;

  factory Env.dev() = _Dev;

  factory Env.prod() = _Prod;
}

class _Dev implements Env {
  @override
  String get appName => 'Bloc Template DEV';

  @override
  String get baseUrl => 'https://template.dev';

  @override
  String get fallbackLocale => _defaultLocale;

  @override
  List<String> get supportedLocales => [_defaultLocale];
}

class _Prod implements Env {
  @override
  String get appName => 'Bloc Template PROD';

  @override
  String get baseUrl => 'https://kitsu.io';

  @override
  String get fallbackLocale => _defaultLocale;

  @override
  List<String> get supportedLocales => _supportedLocales;
}
