// Text Sizing
import 'package:flutter/material.dart';

class TextSizes {
  static double get appBarTitleSize => 20;
  static double get snackBarTextSize => 16;

  // Headings
  static double get h1 => 40;
  static double get h2 => 36;
  static double get h3 => 32;
  static double get h4 => 28;
  static double get h5 => 24;
  static double get h6 => 20;

  // Body Text
  static double get b1 => 14;
  static double get b2 => 12;
  static double get b3 => 10;
}

class PageSizes {
  static double get pagePaddingX => 20;
}

class ProductCardStyles {
  static double get borderRadius => 12;
  static EdgeInsetsGeometry get padding => const EdgeInsets.all(12);

  // Card border radius
  static BoxShadow get boxShadow => const BoxShadow(
        blurRadius: 5,
        spreadRadius: 1,
      );
}
