import 'package:flutter/material.dart';

class AppTheme {
  static const Color green = Color(0xFF5FFF7A);
  static const Color secondaryGreen = Color(0xFF19D339);
  static const Color black = Color(0xFF050606);

  static const LinearGradient borderGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [-0.5, -0.2, 0.5, 0.95, 1.1],
    colors: [
      Color(0xFF00420B),
      Color(0xFF19D339),
      Color(0xFF5FFF7A),
      Color(0xFF00A31C),
      Color(0xFF002D08),
    ],
  );
}
