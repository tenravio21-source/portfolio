import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  static const String localeKey = 'app_locale';
  static Future<void> setLocale(String locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(localeKey, locale);
  }

  static Future<String?> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(localeKey) ?? 'en';
  }
}
