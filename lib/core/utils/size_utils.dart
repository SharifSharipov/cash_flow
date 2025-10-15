/// SizeUtils - Provides responsive sizing utilities
class SizeUtils {
  SizeUtils._();
  
  static double _screenWidth = 375; // Default design width
  static double _screenHeight = 812; // Default design height
  
  static void init({
    required double width,
    required double height,
  }) {
    _screenWidth = width;
    _screenHeight = height;
  }
  
  /// Convert design width to responsive width
  static double getHorizontalSize(double size) {
    return (size * _screenWidth) / 375;
  }
  
  /// Convert design height to responsive height  
  static double getVerticalSize(double size) {
    return (size * _screenHeight) / 812;
  }
  
  /// Get responsive size (uses minimum of width/height scaling)
  static double getSize(double size) {
    final horizontalSize = getHorizontalSize(size);
    final verticalSize = getVerticalSize(size);
    return horizontalSize < verticalSize ? horizontalSize : verticalSize;
  }
}

/// Extension to add .h and .w properties to numbers
extension SizeExtension on num {
  /// Get responsive height
  double get h => SizeUtils.getVerticalSize(toDouble());
  
  /// Get responsive width  
  double get w => SizeUtils.getHorizontalSize(toDouble());
  
  /// Get responsive size
  double get r => SizeUtils.getSize(toDouble());
}
