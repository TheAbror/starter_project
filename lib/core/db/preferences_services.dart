import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter_project/core/db/shared_keys.dart';

class PreferencesServices {
  static Future<bool> clearAll() async {
    final preferences = await SharedPreferences.getInstance();
    return await preferences.clear();
  }

  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= _prefs = await SharedPreferences.getInstance();
  }

  static SharedPreferences _getPrefs() {
    final pref = _prefs;
    if (pref != null) {
      return pref;
    } else {
      throw Exception('SharedPreferences is not inited');
    }
  }

  static void dispose() => _prefs = null;

  static String? getToken() {
    return _getPrefs().getString(ShPrefKeys.email);
  }

  static Future<bool> saveToken(String token) async {
    return _getPrefs().setString(ShPrefKeys.email, token);
  }
}
