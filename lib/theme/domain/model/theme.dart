
import 'package:flutter/material.dart';

enum ThemeName {
  normal
}

enum ThemeType {
  dark,
  light
}

abstract class IAppTheme {
 ThemeData theme();
 ThemeData dark();
 ThemeData light();
}