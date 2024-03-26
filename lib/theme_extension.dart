import 'package:flutter/material.dart';

import 'shadow_extension.dart';

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color primaryColor;

  final Color secondaryColor;

  final Color thirdColor;
  AppColorTheme({
    this.primaryColor = Colors.red,
    this.secondaryColor = Colors.pink,
    this.thirdColor = Colors.green,
  });

  @override
  ThemeExtension<AppColorTheme> copyWith({
    Color? appPrimaryColor,
    Color? appSecondaryColor,
    Color? appThirdColor,
  }) {
    return AppColorTheme(
      primaryColor: appPrimaryColor ?? primaryColor,
      secondaryColor: appSecondaryColor ?? secondaryColor,
      thirdColor: appThirdColor ?? thirdColor,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
    covariant ThemeExtension<AppColorTheme>? other,
    double t,
  ) {
    if (other == null) {
      return this;
    }
    return AppColorTheme();
  }
}

class AppGradientTheme extends ThemeExtension<AppGradientTheme> {
  final Gradient backgroundGradient;

  AppGradientTheme({
    required this.backgroundGradient,
  });
  // Here we can pass colorScheme to use color from color scheme only
  factory AppGradientTheme.generate({required ColorScheme colorScheme}) {
    return AppGradientTheme(
      backgroundGradient: LinearGradient(
        stops: const [0.1, 0.2, 0.9, 0.9, 0.95, 1],
        colors: [
          colorScheme.surfaceTint, // <-- Here
          colorScheme.surfaceTint,
          colorScheme.onInverseSurface,
          colorScheme.onInverseSurface,
          colorScheme.onInverseSurface,
          colorScheme.onInverseSurface,
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
    );
  }

  @override
  ThemeExtension<AppGradientTheme> copyWith({Gradient? backgroundGradient}) {
    return AppGradientTheme(
        backgroundGradient: backgroundGradient ?? this.backgroundGradient);
  }

  @override
  ThemeExtension<AppGradientTheme> lerp(
      covariant ThemeExtension<AppGradientTheme>? other, double t) {
    if (other == null) {
      return this;
    }
    return this;
  }

  /// other methods
}

// Defining extension
extension ThemeDataExtension on ThemeData {
  AppColorTheme get colorTheme => extension<AppColorTheme>() ?? AppColorTheme();
  AppShadowTheme get appShadowTheme =>
      extension<AppShadowTheme>() ?? AppShadowTheme();

  AppGradientTheme get appGradientTheme =>
      extension<AppGradientTheme>() ??
      AppGradientTheme.generate(colorScheme: colorScheme);
}

extension CustomThemeExtension on BuildContext {
  AppColorTheme get colorTheme => Theme.of(this).colorTheme;
  AppShadowTheme get appShadowTheme => Theme.of(this).appShadowTheme;
  AppGradientTheme get appGradientTheme => Theme.of(this).appGradientTheme;
}
