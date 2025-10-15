part of '../themes.dart';

const ColorScheme colorLightScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF1D71F9), // Primary rang
  onPrimary: Color(0xFFFFFFFF), // Primary ustidagi rang
  surface: Color(0xFFF6F6F6), // Input Grey
  onSurface: Color(0xFF848BA6), // Icon Grey
  secondary: Color(0xFF1DC380), // Green
  onSecondary: Color(0xFF151179), // Black
  error: Color(0xFFFE2904), // Red
  onError: Color(0xFFFFFFFF), // Error ustidagi rang
  surfaceContainerHigh: Color(0xFFE9E9EA), // Line Grey
  secondaryContainer: Color(0xFFFFA52F), // Orange
);

const ColorScheme colorDarkScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF1D71F9), // Primary rang
  onPrimary: Color(0xFFFFFFFF), // Primary ustidagi rang
  surface: Color(0xFF151719), // Black
  onSurface: Color(0xFF848BA6), // Icon Grey
  secondary: Color(0xFF1DC380), // Green
  onSecondary: Color(0xFFFFFFFF), // White
  error: Color(0xFFFE2904), // Red
  onError: Color(0xFFFFFFFF), // Error ustidagi rang
  surfaceContainerHigh: Color(0xFFE9E9EA), // Line Grey
  secondaryContainer: Color(0xFFFFA52F), // Orange
);

class ThemeColors extends ThemeExtension<ThemeColors> {
  const ThemeColors({
    required this.main,
    required this.cardColor,
    required this.green,
    required this.whiteOpacity05,
    required this.whiteOpacity5,
  });

  final Color main;
  final Color cardColor;
  final Color green;
  final Color whiteOpacity05;
  final Color whiteOpacity5;

  static const ThemeColors light = ThemeColors(
    main: Color(0xFF151179), // Black
    green: Color(0xFF1DC380), // Green
    cardColor: Color(0xFFFFFFFF), // White
    whiteOpacity05: Color.fromRGBO(255, 255, 255, 0.05),
    whiteOpacity5: Color.fromRGBO(255, 255, 255, 0.5),
  );

  static const ThemeColors dark = ThemeColors(
    main: Color(0xFF151179), // Black
    green: Color(0xFF1DC380), // Green
    cardColor: Color(0xFF151179), // Black
    whiteOpacity05: Color.fromRGBO(255, 255, 255, 0.05),
    whiteOpacity5: Color.fromRGBO(255, 255, 255, 0.5),
  );

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? cardColor,
    Color? main,
    Color? green,
    Color? whiteOpacity05,
    Color? whiteOpacity5,
  }) =>
      ThemeColors(
        green: green ?? this.green,
        cardColor: cardColor ?? this.cardColor,
        main: main ?? this.main,
        whiteOpacity05: whiteOpacity05 ?? this.whiteOpacity05,
        whiteOpacity5: whiteOpacity5 ?? this.whiteOpacity5,
      );

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }
    return ThemeColors(
      whiteOpacity5: Color.lerp(whiteOpacity5, other.whiteOpacity5, t)!,
      green: Color.lerp(green, other.green, t)!,
      main: Color.lerp(main, other.main, t)!,
      cardColor: Color.lerp(cardColor, other.cardColor, t)!,
      whiteOpacity05: Color.lerp(whiteOpacity05, other.whiteOpacity05, t)!,
    );
  }
}
