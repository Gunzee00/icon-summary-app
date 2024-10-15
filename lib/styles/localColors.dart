import 'package:flutter/material.dart';

class LocalColorsStyle{

  static const int _primaryValue = 0xFF6060B8;

  static const MaterialColor primaryColor = MaterialColor(
    _primaryValue, 
      <int, Color>{
      500: Color(LocalColorsStyle._primaryValue),
    },
  );

}