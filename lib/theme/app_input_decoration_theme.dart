import 'package:flutter/material.dart';

class AppInputDecorationTheme {
  static InputDecorationTheme defaultInputTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.purple),
    ),
  );
}
