import 'package:flutter/material.dart';

import 'shadow_extension.dart';
import 'theme_extension.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        colorScheme: lightColorScheme,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extensions: [
          AppShadowTheme(),
          AppGradientTheme.generate(colorScheme: lightColorScheme),
        ],
      );

  static ThemeData get darkTheme => ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        colorScheme: darkColorScheme,
        extensions: [
          AppShadowTheme.dark(),
          AppGradientTheme.generate(colorScheme: darkColorScheme),
        ],
      );

  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF6750A4),
    onInverseSurface: Color(0xFFF4EFF4),
    surfaceTint: Color(0xFF9180c1),
    onBackground: Colors.white,
    background: Colors.white,
    onError: Colors.red,
    error: Colors.red,
    onSecondary: Colors.red,
    onPrimary: Colors.red,
    surface: Colors.white,
    onSurface: Colors.white,
    secondary: Colors.red,

    /// ... Other colors
  );

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFD0BCFF),
    secondary: Color(0xFFCCC2DC),
    onInverseSurface: Color(0xFF313033),
    surfaceTint: Color(0xFFD0BCFF), onBackground: Colors.white,
    background: Colors.white,
    onError: Colors.red,
    error: Colors.red,
    onSecondary: Colors.red,
    onPrimary: Colors.red,
    surface: Colors.white,
    onSurface: Colors.white,

    /// ...Other colors
  );
}
