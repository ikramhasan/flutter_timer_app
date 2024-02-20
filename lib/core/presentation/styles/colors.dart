import 'package:flutter/material.dart';

class AppColors {
  static const backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color(0xFF0C1D4D),
      Color(0xFF214ECC),
    ],
  );

  static final secondaryContainer = Colors.white.withOpacity(0.16);
  static final surfaceColor = Colors.white.withOpacity(0.08);
}
