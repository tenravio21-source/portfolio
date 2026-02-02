import 'package:flutter/material.dart';
import 'package:portfolio/src/components/style/app_size.dart';

import '../../../l10n/app_localizations.dart'
    show AppLocalizations, lookupAppLocalizations;
import '../style/app_text_style.dart';

enum FormFactorType { mobile, tablet, desktop }

extension FormFactorExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  FormFactorType get formFactor {
    if (screenWidth < 600) return FormFactorType.mobile;
    if (screenWidth < 900) return FormFactorType.tablet;
    return FormFactorType.desktop;
  }

  bool get isMobile => formFactor == FormFactorType.mobile;
  bool get isTablet => formFactor == FormFactorType.tablet;
  bool get isDesktop => formFactor == FormFactorType.desktop;

  AppTextStyle get textStyle {
    switch (formFactor) {
      case FormFactorType.mobile:
      case FormFactorType.tablet:
        return SmallTextStyle();
      case FormFactorType.desktop:
        return LargeTextStyle();
    }
  }

  AppSize get insets {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallInsets();
      case FormFactorType.tablet:
      case FormFactorType.desktop:
        return LargeInsets();
    }
  }

  AppLocalizations get texts =>
      AppLocalizations.of(this) ?? lookupAppLocalizations(const Locale('en'));
}
