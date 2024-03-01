import 'package:flutter/material.dart';

const Color _customColor = Color(0xff4234);

const List<Color> _colorTheme = [
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor});

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorTheme[selectedColor]);
  }
}
