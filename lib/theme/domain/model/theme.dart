
import 'package:flutter/material.dart';

@immutable
class CoreTheme {
  final String name;
  ThemeMode mode;

  CoreTheme({required this.name, required this.mode});

  CoreTheme copyWith({String? name, ThemeMode? mode}) {
    return CoreTheme(name: name ?? this.name,
        mode: mode ?? this.mode);
  }
}

const String themeNameSystem = "System";

abstract class IAppTheme {
  ThemeData from(CoreTheme theme);
  ThemeData currentTheme();
  ThemeData buildDark(ThemeData data);
  ThemeData buildLight(ThemeData data);
  ThemeMode currentMode();
}