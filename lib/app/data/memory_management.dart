import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository {
  static SharedPreferences? _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static SetInteger(String key, int value) {
    if (_prefs != null) _prefs!.setInt(key, value);
  }

  static int getInteger(String key) {
    return _prefs == null ? 0 : _prefs!.getInt(key) ?? 0;
  }

  static SetDouble(String key, double value) {
    if (_prefs != null) _prefs!.setDouble(key, value);
  }

  static double getDouble(String key) {
    return _prefs == null ? 0.0 : _prefs!.getDouble(key) ?? 0.0;
  }

  static SetString(String key, String value) {
    if (_prefs != null) _prefs!.setString(key, value);
  }

  static String getString(String key) {
    return _prefs == null ? 'DEFAULT_VALUE' : _prefs!.getString(key) ?? "";
  }

  static SetBool(String key, bool value) {
    if (_prefs != null) _prefs!.setBool(key, value);
  }

  static bool getBool(String key) {
    return _prefs == null ? false : _prefs!.getBool(key) ?? false;
  }
}