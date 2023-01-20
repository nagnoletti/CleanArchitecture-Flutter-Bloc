

class Localizables {
  static String counterValue = 'home.counter_value';
  static String anime = 'anime';
  static String system = 'system';
  static String language = 'language';
  static String theme = 'theme';
  static String navigate = 'navigate';

  static String languageName({required String key}) => 'languages.$key.name';

  static String brightnessName(String key) => 'brightness.$key.name';
}
