import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff34623f),
      surfaceTint: Color(0xff3a6845),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4c7b56),
      onPrimaryContainer: Color(0xffddffdf),
      secondary: Color(0xff506352),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd0e5d0),
      onSecondaryContainer: Color(0xff546756),
      tertiary: Color(0xff2f5c7d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff497597),
      onTertiaryContainer: Color(0xfff1f7ff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff9faf4),
      onSurface: Color(0xff191c19),
      onSurfaceVariant: Color(0xff414941),
      outline: Color(0xff717970),
      outlineVariant: Color(0xffc1c9bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312e),
      inversePrimary: Color(0xffa0d3a7),
      primaryFixed: Color(0xffbbefc2),
      onPrimaryFixed: Color(0xff00210c),
      primaryFixedDim: Color(0xffa0d3a7),
      onPrimaryFixedVariant: Color(0xff21502f),
      secondaryFixed: Color(0xffd3e8d3),
      onSecondaryFixed: Color(0xff0e1f12),
      secondaryFixedDim: Color(0xffb7ccb7),
      onSecondaryFixedVariant: Color(0xff394b3b),
      tertiaryFixed: Color(0xffcbe6ff),
      onTertiaryFixed: Color(0xff001e30),
      tertiaryFixedDim: Color(0xff9fcbf1),
      onTertiaryFixedVariant: Color(0xff194b6a),
      surfaceDim: Color(0xffd9dbd5),
      surfaceBright: Color(0xfff9faf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4ef),
      surfaceContainer: Color(0xffedeee9),
      surfaceContainerHigh: Color(0xffe7e9e3),
      surfaceContainerHighest: Color(0xffe2e3de),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0e3f1f),
      surfaceTint: Color(0xff3a6845),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff487753),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff293a2b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff5f7260),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003a58),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff457193),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faf4),
      onSurface: Color(0xff0f120f),
      onSurfaceVariant: Color(0xff313831),
      outline: Color(0xff4d544d),
      outlineVariant: Color(0xff676f67),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312e),
      inversePrimary: Color(0xffa0d3a7),
      primaryFixed: Color(0xff487753),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff305e3c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff5f7260),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff475949),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff457193),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2b5979),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c7c2),
      surfaceBright: Color(0xfff9faf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4ef),
      surfaceContainer: Color(0xffe7e9e3),
      surfaceContainerHigh: Color(0xffdcddd8),
      surfaceContainerHighest: Color(0xffd1d2cd),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff013416),
      surfaceTint: Color(0xff3a6845),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff245231),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1f3022),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3b4e3e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002f49),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1d4d6d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9faf4),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff272e27),
      outlineVariant: Color(0xff444b43),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312e),
      inversePrimary: Color(0xffa0d3a7),
      primaryFixed: Color(0xff245231),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff093b1c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3b4e3e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff253728),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1d4d6d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003653),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb8b9b4),
      surfaceBright: Color(0xfff9faf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f1ec),
      surfaceContainer: Color(0xffe2e3de),
      surfaceContainerHigh: Color(0xffd3d5d0),
      surfaceContainerHighest: Color(0xffc5c7c2),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa0d3a7),
      surfaceTint: Color(0xffa0d3a7),
      onPrimary: Color(0xff06381a),
      primaryContainer: Color(0xff4c7b56),
      onPrimaryContainer: Color(0xffddffdf),
      secondary: Color(0xffb7ccb7),
      onSecondary: Color(0xff233426),
      secondaryContainer: Color(0xff3b4d3e),
      onSecondaryContainer: Color(0xffa9bea9),
      tertiary: Color(0xff9fcbf1),
      onTertiary: Color(0xff00344f),
      tertiaryContainer: Color(0xff497597),
      onTertiaryContainer: Color(0xfff1f7ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111411),
      onSurface: Color(0xffe2e3de),
      onSurfaceVariant: Color(0xffc1c9bf),
      outline: Color(0xff8b938a),
      outlineVariant: Color(0xff414941),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3de),
      inversePrimary: Color(0xff3a6845),
      primaryFixed: Color(0xffbbefc2),
      onPrimaryFixed: Color(0xff00210c),
      primaryFixedDim: Color(0xffa0d3a7),
      onPrimaryFixedVariant: Color(0xff21502f),
      secondaryFixed: Color(0xffd3e8d3),
      onSecondaryFixed: Color(0xff0e1f12),
      secondaryFixedDim: Color(0xffb7ccb7),
      onSecondaryFixedVariant: Color(0xff394b3b),
      tertiaryFixed: Color(0xffcbe6ff),
      onTertiaryFixed: Color(0xff001e30),
      tertiaryFixedDim: Color(0xff9fcbf1),
      onTertiaryFixedVariant: Color(0xff194b6a),
      surfaceDim: Color(0xff111411),
      surfaceBright: Color(0xff373a36),
      surfaceContainerLowest: Color(0xff0c0f0c),
      surfaceContainerLow: Color(0xff191c19),
      surfaceContainer: Color(0xff1e201d),
      surfaceContainerHigh: Color(0xff282b27),
      surfaceContainerHighest: Color(0xff333532),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb5e9bc),
      surfaceTint: Color(0xffa0d3a7),
      onPrimary: Color(0xff002d12),
      primaryContainer: Color(0xff6b9c74),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcde2cd),
      onSecondary: Color(0xff18291c),
      secondaryContainer: Color(0xff829683),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffbee0ff),
      onTertiary: Color(0xff00283f),
      tertiaryContainer: Color(0xff6a95b9),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111411),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd7dfd4),
      outline: Color(0xffacb4aa),
      outlineVariant: Color(0xff8b9289),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3de),
      inversePrimary: Color(0xff235130),
      primaryFixed: Color(0xffbbefc2),
      onPrimaryFixed: Color(0xff001506),
      primaryFixedDim: Color(0xffa0d3a7),
      onPrimaryFixedVariant: Color(0xff0e3f1f),
      secondaryFixed: Color(0xffd3e8d3),
      onSecondaryFixed: Color(0xff041508),
      secondaryFixedDim: Color(0xffb7ccb7),
      onSecondaryFixedVariant: Color(0xff293a2b),
      tertiaryFixed: Color(0xffcbe6ff),
      onTertiaryFixed: Color(0xff001321),
      tertiaryFixedDim: Color(0xff9fcbf1),
      onTertiaryFixedVariant: Color(0xff003a58),
      surfaceDim: Color(0xff111411),
      surfaceBright: Color(0xff424542),
      surfaceContainerLowest: Color(0xff060806),
      surfaceContainerLow: Color(0xff1b1e1b),
      surfaceContainer: Color(0xff262925),
      surfaceContainerHigh: Color(0xff313330),
      surfaceContainerHighest: Color(0xff3c3e3b),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc8fdcf),
      surfaceTint: Color(0xffa0d3a7),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff9ccfa4),
      onPrimaryContainer: Color(0xff000f04),
      secondary: Color(0xffe0f6e0),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb3c8b3),
      onSecondaryContainer: Color(0xff010e04),
      tertiary: Color(0xffe5f1ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff9cc8ed),
      onTertiaryContainer: Color(0xff000c18),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff111411),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffebf2e7),
      outlineVariant: Color(0xffbdc5bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3de),
      inversePrimary: Color(0xff235130),
      primaryFixed: Color(0xffbbefc2),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa0d3a7),
      onPrimaryFixedVariant: Color(0xff001506),
      secondaryFixed: Color(0xffd3e8d3),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb7ccb7),
      onSecondaryFixedVariant: Color(0xff041508),
      tertiaryFixed: Color(0xffcbe6ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff9fcbf1),
      onTertiaryFixedVariant: Color(0xff001321),
      surfaceDim: Color(0xff111411),
      surfaceBright: Color(0xff4e514d),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1e201d),
      surfaceContainer: Color(0xff2e312e),
      surfaceContainerHigh: Color(0xff393c39),
      surfaceContainerHighest: Color(0xff454744),
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
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
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
