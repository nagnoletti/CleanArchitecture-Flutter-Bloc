import 'package:flutter/material.dart';

/// App's light theme using Material3
/// Change specific parts of the theme according to the design specs like colors and testStyles inside copyWith()
final lightTheme = ThemeData.light(useMaterial3: true).copyWith(primaryColor: Colors.red);

/// App's dark theme using Material3
/// Change specific parts of the theme according to the design specs like colors and testStyles inside copyWith()
final darkTheme = ThemeData.dark(useMaterial3: true).copyWith(primaryColor: Colors.red);
