import 'package:admin_search/theme/app_input_decoration_theme.dart';
import 'package:admin_search/theme/app_text_button_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: AppInputDecorationTheme.defaultInputTheme,
    textButtonTheme: AppTextButtonTheme.textButtonTheme,
  );
}
