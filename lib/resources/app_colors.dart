import 'package:flutter/material.dart';

class AppColors {
  static const Color _black = Color.fromARGB(255, 22, 22, 22);
  static const Color _green = Color.fromARGB(255, 111, 222, 109);
  static const Color _white = Color.fromARGB(255, 255, 255, 255);
  static const Color _grey = Color.fromARGB(255, 65, 65, 67);
  static const Color _lightGrey = Color.fromARGB(255, 173, 173, 173);
  static const Color _blueWhite = Color.fromARGB(255, 235, 235, 245);
  static const Color _orange = Color.fromARGB(255, 251, 122, 75);
  static const Color _red = Color.fromARGB(255, 255, 84, 84);
  static MaterialColor black = _createMaterialColor(_black);
  static MaterialColor white = _createMaterialColor(_white);
  static MaterialColor green = _createMaterialColor(_green);
  static MaterialColor grey = _createMaterialColor(_grey);
  static MaterialColor lightGrey = _createMaterialColor(_lightGrey);
  static MaterialColor blueWhite = _createMaterialColor(_blueWhite);
  static MaterialColor orange = _createMaterialColor(_orange);
  static MaterialColor red = _createMaterialColor(_red);

  static MaterialColor _createMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: color.withOpacity(0.1),
      100: color.withOpacity(0.2),
      200: color.withOpacity(0.3),
      300: color.withOpacity(0.4),
      400: color.withOpacity(0.5),
      500: color.withOpacity(0.6),
      600: color.withOpacity(0.7),
      700: color.withOpacity(0.8),
      800: color.withOpacity(0.9),
      900: color.withOpacity(1.0),
    });
  }
}
