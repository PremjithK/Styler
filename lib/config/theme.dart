// Theme
import 'package:flutter/material.dart';

// Common styles

// Light and dark themes
ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  // UI
  appBarTheme: const AppBarTheme(
    titleSpacing: 10,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
  ),
  cardTheme: const CardTheme(),
  elevatedButtonTheme: const ElevatedButtonThemeData(),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  // UI
  appBarTheme: const AppBarTheme(),
  cardTheme: const CardTheme(),
  elevatedButtonTheme: const ElevatedButtonThemeData(),
);
