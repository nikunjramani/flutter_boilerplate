import 'package:flutter_boilerplate/build_type.dart';

class AppConfig {
  static String baseUrl = '';

  static const String defaultLocale = 'en';

  static void init() {
    if(isDevelopmentBuild){
      configDev();
    }else if(isStagingBuild){
      configStag();
    }else if(isProductionBuild){
      configProduction();
    }

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
