import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_locale_controller.dart';

final AsyncNotifierProvider<AppLocaleController, String>
appLocaleControllerProvider =
    AsyncNotifierProvider<AppLocaleController, String>(AppLocaleController.new);
