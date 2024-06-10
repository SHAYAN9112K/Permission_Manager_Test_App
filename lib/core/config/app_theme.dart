import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 16),
          bodyLarge: TextStyle(color: Colors.black, fontSize: 14)),
    );
  }
}
