import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/app_shared_preferences.dart';

class AppLocaleController extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() async {
    final savedLocale = await AppSharedPreferences.getLocale();
    return savedLocale ?? 'en';
  }

  void changeLocale(String locale) async {
    AppSharedPreferences.setLocale(locale);
    state = AsyncData(locale);
  }
}
