import 'package:flutter/material.dart';

class AppTextButtonTheme {
  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.purple),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 45.0, vertical: 25.0),
      ),
    ),
  );
}
