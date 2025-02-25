
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static late SharedPreferences _prefs;

  /// Initialize SharedPreferences instance
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Save String value
  static Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  /// Get String value
  static String? getString(String key) {
    return _prefs.getString(key);
  }

  /// Save int value
  static Future<void> setInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  /// Get int value
  static int? getInt(String key) {
    return _prefs.getInt(key);
  }

  /// Save double value
  static Future<void> setDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }

  /// Get double value
  static double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  /// Save bool value
  static Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  /// Get bool value
  static bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  /// Save List<String> value
  static Future<void> setStringList(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }

  /// Get List<String> value
  static List<String>? getStringList(String key) {
    return _prefs.getStringList(key);
  }

  /// Remove a specific key
  static Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  /// Clear all stored preferences
  static Future<void> clear() async {
    await _prefs.clear();
  }
}
