import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  // useMaterial3: true,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: const Color(0xFFF44336),
    secondary: const Color(0xFF4C60F6),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
    color: Color(0xFF4C60F6),
    iconTheme: IconThemeData(color: Colors.white, size: 25.0),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 18.0, color: Colors.white),
    headlineMedium: TextStyle(fontSize: 16.0, color: Colors.white),
    headlineSmall: TextStyle(fontSize: 14.0, color: Colors.white),
    titleLarge: TextStyle(fontSize: 18.0),
    titleMedium: TextStyle(fontSize: 16.0),
    titleSmall: TextStyle(fontSize: 14.0),
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 14.0),
    bodySmall: TextStyle(fontSize: 12.0),
  ),
);
