library flutter_nscore;

import 'package:flutter/material.dart';
import 'package:hello_flutter/theme/domain/model/theme.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';
import 'app_text_theme.dart';


class ThemeManager implements IAppTheme {

  static final normalTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: TextThemes.textTheme,
    primaryTextTheme: TextThemes.primaryTextTheme,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.lightGrey,
      error: AppColors.error,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: AppColors.primary,
    ),
    useMaterial3: true
  );

  @override
  ThemeData theme() {
    return normalTheme;
  }

  @override
  ThemeData dark() {
    return theme().copyWith(brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.lightGrey,
        error: AppColors.error,
        background: AppColors.black,
      ),
      scaffoldBackgroundColor: AppColors.black,
      textTheme: TextThemes.darkTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        titleTextStyle: AppTextStyles.h2,
      ),
    );
  }

  @override
  ThemeData light() {
    return theme();
  }
}