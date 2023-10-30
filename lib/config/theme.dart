// Theme
import 'package:flutter/material.dart';
import 'package:styler/config/sizes.dart';

//Fonts
const titleFont = 'Kaisei';
const bodyFont = 'Overpass';

// Common styles
final appBarTheme = AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.black.withOpacity(0.9),
    titleSpacing: 15,
    titleTextStyle: TextStyle(
      fontFamily: titleFont,
      color: Colors.orange,
      fontSize: TextSizes.appBarTitleSize,
      fontWeight: FontWeight.w900,
    ),
    actionsIconTheme: const IconThemeData(
      size: 21,
      color: Colors.orange,
    ),
    iconTheme: const IconThemeData(color: Colors.orange));

// Light and dark themes
ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: bodyFont,
  brightness: Brightness.light,
  // UI
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: const Color.fromARGB(255, 230, 230, 230),
  cardTheme: const CardTheme(),
  elevatedButtonTheme: const ElevatedButtonThemeData(),
  dividerTheme: DividerThemeData(
    space: 16,
    color: Colors.black.withOpacity(0.1),
  ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: bodyFont,
  brightness: Brightness.dark,
  // UI
  appBarTheme: appBarTheme,
  scaffoldBackgroundColor: const Color.fromARGB(25, 230, 230, 230),
  cardTheme: const CardTheme(),
  elevatedButtonTheme: const ElevatedButtonThemeData(),
  dividerTheme: DividerThemeData(
    space: 16,
    color: Colors.white.withOpacity(0.1),
  ),
);
