import 'package:flutter/material.dart';
import 'package:portfolio/src/components/style/app_colors.dart';

class AppTheme {
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      surface: AppColors.darkBackgroundColor,
      onSurface: AppColors.gray[200]!,
      secondary: AppColors.primaryColor,
    ),

    scaffoldBackgroundColor: AppColors.darkBackgroundColor,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBackgroundColor,
      foregroundColor: AppColors.gray[100],
      elevation: 0,
    ),

    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.gray[200]),
      bodyMedium: TextStyle(color: AppColors.gray[300]),
    ),
  );
}
