
class AppConfig {
  static String baseUrl = '';

  static const String defaultLocale = 'en';

  static void init() {

  }

  static void configDev() {
    baseUrl = 'https://test.com/api';
  }

  static void configStag() {
    /// TODO
  }

  static void configProduction() {
    /// TODO
  }
}
