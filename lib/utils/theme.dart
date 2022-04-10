import 'package:flutter/material.dart';

class EstateTheme {
  static const Color primaryColor = Color(0xFF332F1C);
  static const Color secondaryColor = Color(0xFFAC985B);
  static const Color grey = Color(0xFF7B776B);
  static const Color greyish = Color(0xFF7B776B);
  static const Color black = Color(0xFF0C0D07);
  static const Color white = Color(0xFFFFFFFF);
  static ThemeData get theme => ThemeData(
        primaryColor: primaryColor,
        colorScheme: const ColorScheme.dark(
          primary: primaryColor,
          secondary: secondaryColor,
        ),
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: primaryColor,
        ),
      );
}
