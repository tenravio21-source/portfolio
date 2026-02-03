import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLocaleController extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() {
    return Future.value('en');
  }

  void changeLocale(String locale) {
    update((state) => locale);
  }
}
