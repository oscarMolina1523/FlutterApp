import 'package:flutter/material.dart';

const Color _customColor=Color(0xFF0B07E0);

const List<Color> _colorThemes=[
  _customColor,
  Colors.pink,
  Colors.yellow,
  Colors.orange
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor=0,
  }):assert(selectedColor>=0 && selectedColor<= _colorThemes.length -1,
    "The color must be between 0 and ${_colorThemes.length}"
   );

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}