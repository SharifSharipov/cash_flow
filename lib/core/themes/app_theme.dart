import 'package:flutter/material.dart';

/// AppTheme - Provides theme-related utilities and colors
class AppTheme {
  AppTheme._();
  
  static AppTheme get instance => AppTheme._();
  
  // Custom colors
  Color get whiteCustom => const Color(0xFFFFFFFF);
  Color get transparentCustom => const Color(0x00000000);
  Color get grey200 => const Color(0xFFE0E0E0);
  Color get grey100 => const Color(0xFFF5F5F5);
  Color get color4CFFFF => const Color(0xFF4CFFFF);
  Color get indigoA10001 => const Color(0xFF8C9EFF);
}

// Global instance for easy access
final appTheme = AppTheme.instance;
