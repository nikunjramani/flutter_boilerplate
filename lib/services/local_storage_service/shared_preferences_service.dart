import 'dart:async';

import 'package:flutter_boilerplate/configs/app_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferencesService() {
    init();
  }
  late final SharedPreferences _pref;

  String tokenKey = 'tokenKey';
  String localeKey = 'localeKey';
  String isDarkModeKey = 'isDarkModeKey';
  String isFirstUseKey = 'isFirstUseKey';

  
  FutureOr<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  
  String? get token => _pref.getString(tokenKey);

  
  bool get isDarkMode => _pref.getBool(isDarkModeKey) ?? false;

  
  bool get isFirstUse => _pref.getBool(isFirstUseKey) ?? false;

  
  String get locale => _pref.getString(localeKey) ?? AppConfig.defaultLocale;

  
  Future<bool> setIsDarkMode(bool isDarkMode) async {
    return await _pref.setBool(isDarkModeKey, isDarkMode);
  }

  
  Future<bool> setIsFirstUse(bool isFirstUse) async {
    return await _pref.setBool(isFirstUseKey, isFirstUse);
  }

  
  Future<bool> setLocale(String locale) async {
    return await _pref.setString(localeKey, locale);
  }

  
  Future<bool> setToken(String token) async {
    return await _pref.setString(tokenKey, token);
  }

  
  getValue({required String key}) {
    return _pref.get(key);
  }

  
  void setValue({required String key, required value}) {}
}
