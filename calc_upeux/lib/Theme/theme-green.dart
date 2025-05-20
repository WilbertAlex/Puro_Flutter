import "package:flutter/material.dart";
import 'package:calc_upeux/Theme/theme-base.dart';

class MaterialThemeGreen {
  final TextTheme textTheme;

  const MaterialThemeGreen(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006a62),
      surfaceTint: Color(0xff006a62),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9df2e7),
      onPrimaryContainer: Color(0xff00504a),
      secondary: Color(0xff4a635f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcce8e3),
      onSecondaryContainer: Color(0xff324b48),
      tertiary: Color(0xff47617a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcee5ff),
      onTertiaryContainer: Color(0xff2f4961),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff4fbf8),
      onSurface: Color(0xff161d1c),
      onSurfaceVariant: Color(0xff3f4947),
      outline: Color(0xff6f7977),
      outlineVariant: Color(0xffbec9c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inversePrimary: Color(0xff81d5cb),
      primaryFixed: Color(0xff9df2e7),
      onPrimaryFixed: Color(0xff00201d),
      primaryFixedDim: Color(0xff81d5cb),
      onPrimaryFixedVariant: Color(0xff00504a),
      secondaryFixed: Color(0xffcce8e3),
      onSecondaryFixed: Color(0xff051f1d),
      secondaryFixedDim: Color(0xffb1ccc7),
      onSecondaryFixedVariant: Color(0xff324b48),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001d32),
      tertiaryFixedDim: Color(0xffaec9e6),
      onTertiaryFixedVariant: Color(0xff2f4961),
      surfaceDim: Color(0xffd5dbd9),
      surfaceBright: Color(0xfff4fbf8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f3),
      surfaceContainer: Color(0xffe9efed),
      surfaceContainerHigh: Color(0xffe3eae7),
      surfaceContainerHighest: Color(0xffdde4e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003e39),
      surfaceTint: Color(0xff006a62),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1b7a71),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff223b37),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff58726e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1d3850),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff557089),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff4fbf8),
      onSurface: Color(0xff0c1211),
      onSurfaceVariant: Color(0xff2e3836),
      outline: Color(0xff4b5453),
      outlineVariant: Color(0xff656f6d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inversePrimary: Color(0xff81d5cb),
      primaryFixed: Color(0xff1b7a71),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff006058),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff58726e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff405a56),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff557089),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3d5770),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc1c8c6),
      surfaceBright: Color(0xfff4fbf8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f3),
      surfaceContainer: Color(0xffe3eae7),
      surfaceContainerHigh: Color(0xffd8dedc),
      surfaceContainerHighest: Color(0xffccd3d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00322e),
      surfaceTint: Color(0xff006a62),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff00534c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff17302d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff354e4a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff112e45),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff314c64),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff4fbf8),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff242e2c),
      outlineVariant: Color(0xff414b49),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inversePrimary: Color(0xff81d5cb),
      primaryFixed: Color(0xff00534c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003a35),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff354e4a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1e3734),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff314c64),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff19354c),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb4bab8),
      surfaceBright: Color(0xfff4fbf8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffecf2f0),
      surfaceContainer: Color(0xffdde4e2),
      surfaceContainerHigh: Color(0xffcfd6d4),
      surfaceContainerHighest: Color(0xffc1c8c6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff81d5cb),
      surfaceTint: Color(0xff81d5cb),
      onPrimary: Color(0xff003733),
      primaryContainer: Color(0xff00504a),
      onPrimaryContainer: Color(0xff9df2e7),
      secondary: Color(0xffb1ccc7),
      onSecondary: Color(0xff1c3532),
      secondaryContainer: Color(0xff324b48),
      onSecondaryContainer: Color(0xffcce8e3),
      tertiary: Color(0xffaec9e6),
      onTertiary: Color(0xff16334a),
      tertiaryContainer: Color(0xff2f4961),
      onTertiaryContainer: Color(0xffcee5ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1514),
      onSurface: Color(0xffdde4e2),
      onSurfaceVariant: Color(0xffbec9c6),
      outline: Color(0xff899391),
      outlineVariant: Color(0xff3f4947),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e2),
      inversePrimary: Color(0xff006a62),
      primaryFixed: Color(0xff9df2e7),
      onPrimaryFixed: Color(0xff00201d),
      primaryFixedDim: Color(0xff81d5cb),
      onPrimaryFixedVariant: Color(0xff00504a),
      secondaryFixed: Color(0xffcce8e3),
      onSecondaryFixed: Color(0xff051f1d),
      secondaryFixedDim: Color(0xffb1ccc7),
      onSecondaryFixedVariant: Color(0xff324b48),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001d32),
      tertiaryFixedDim: Color(0xffaec9e6),
      onTertiaryFixedVariant: Color(0xff2f4961),
      surfaceDim: Color(0xff0e1514),
      surfaceBright: Color(0xff343a39),
      surfaceContainerLowest: Color(0xff090f0e),
      surfaceContainerLow: Color(0xff161d1c),
      surfaceContainer: Color(0xff1a2120),
      surfaceContainerHigh: Color(0xff252b2a),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff97ebe1),
      surfaceTint: Color(0xff81d5cb),
      onPrimary: Color(0xff002b27),
      primaryContainer: Color(0xff499e95),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc6e2dd),
      onSecondary: Color(0xff102a27),
      secondaryContainer: Color(0xff7b9692),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffc4dffd),
      onTertiary: Color(0xff09283e),
      tertiaryContainer: Color(0xff7993af),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1514),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd4dfdc),
      outline: Color(0xffaab4b2),
      outlineVariant: Color(0xff889290),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e2),
      inversePrimary: Color(0xff00514b),
      primaryFixed: Color(0xff9df2e7),
      onPrimaryFixed: Color(0xff001512),
      primaryFixedDim: Color(0xff81d5cb),
      onPrimaryFixedVariant: Color(0xff003e39),
      secondaryFixed: Color(0xffcce8e3),
      onSecondaryFixed: Color(0xff001512),
      secondaryFixedDim: Color(0xffb1ccc7),
      onSecondaryFixedVariant: Color(0xff223b37),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff001222),
      tertiaryFixedDim: Color(0xffaec9e6),
      onTertiaryFixedVariant: Color(0xff1d3850),
      surfaceDim: Color(0xff0e1514),
      surfaceBright: Color(0xff3f4644),
      surfaceContainerLowest: Color(0xff040808),
      surfaceContainerLow: Color(0xff181f1e),
      surfaceContainer: Color(0xff232928),
      surfaceContainerHigh: Color(0xff2d3433),
      surfaceContainerHighest: Color(0xff383f3e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffadfff4),
      surfaceTint: Color(0xff81d5cb),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff7dd1c7),
      onPrimaryContainer: Color(0xff000e0c),
      secondary: Color(0xffdaf6f1),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffadc8c3),
      onSecondaryContainer: Color(0xff000e0c),
      tertiary: Color(0xffe6f1ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffaac5e2),
      onTertiaryContainer: Color(0xff000c19),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0e1514),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe8f2ef),
      outlineVariant: Color(0xffbac5c2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e2),
      inversePrimary: Color(0xff00514b),
      primaryFixed: Color(0xff9df2e7),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff81d5cb),
      onPrimaryFixedVariant: Color(0xff001512),
      secondaryFixed: Color(0xffcce8e3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb1ccc7),
      onSecondaryFixedVariant: Color(0xff001512),
      tertiaryFixed: Color(0xffcee5ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffaec9e6),
      onTertiaryFixedVariant: Color(0xff001222),
      surfaceDim: Color(0xff0e1514),
      surfaceBright: Color(0xff4b5150),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1a2120),
      surfaceContainer: Color(0xff2b3230),
      surfaceContainerHigh: Color(0xff363d3b),
      surfaceContainerHighest: Color(0xff414847),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
