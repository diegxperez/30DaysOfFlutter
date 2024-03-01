import 'package:flutter/material.dart';

List<Color> colorTheme = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.black,
  Colors.cyan,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= colorTheme.length - 1,
            'number 0 < ${colorTheme.length}');

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: colorTheme[selectedColor]);
  }
}
