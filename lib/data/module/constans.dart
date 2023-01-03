import 'package:flutter/material.dart';
import 'dart:math';

class ColorSelecet {
  static Color primery = const Color(0xFF1F5FD9);
  static Color surface = const Color.fromARGB(255, 218, 230, 246);
  static Color white = const Color(0xFFFFFFFF);
  static Color hover = const Color(0xFF142952);
  static Color bgFade = const Color(0xFFF6FAFD);
  static Color line = const Color(0xFFB8BEC3);
  static Color searchBox = const Color(0xFFE8F1F1);
  static Color folder = const Color(0xFFFFC855);
  static Color indicator = const Color(0xFFC9E0FF);
  static Color black = const Color(0x00000000);
  static Color green = const Color(0xFF45CF8D);
  static Color pink = const Color(0xFFFF65D4);
}

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

class Palette {
  static const Color primary = Color(0xFF1F5FD9);
}
