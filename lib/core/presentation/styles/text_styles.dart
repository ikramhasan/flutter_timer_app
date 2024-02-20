import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Display
  static TextStyle get displayLarge => GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 57,
        color: Colors.white,
      );

  static TextStyle get displayMedium => GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 45,
        color: Colors.white,
      );

  static TextStyle get displaySmall => GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        color: Colors.white,
      );

  // Headline
  static TextStyle get headlineLarge => GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 32,
        color: Colors.white,
      );

  static TextStyle get headlineMedium => GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 28,
        color: Colors.white,
      );

  static TextStyle get headlineSmall => GoogleFonts.inter(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: Colors.white,
      );

  // Title
  static TextStyle get titleLarge => GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: Colors.white,
      );

  static TextStyle get titleMedium => GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        letterSpacing: 0.15,
        color: Colors.white,
      );

  static TextStyle get titleSmall => GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
        color: Colors.white,
      );

  // Label
  static TextStyle get labelLarge => GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
        color: Colors.white,
      );

  static TextStyle get labelMedium => GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.5,
        color: Colors.white,
      );

  static TextStyle get labelSmall => GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        letterSpacing: 0.5,
        color: Colors.white,
      );

  // Body
  static TextStyle get bodyLarge => GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.5,
        color: Colors.white,
      );

  static TextStyle get bodyMedium => GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
        color: Colors.white,
      );

  static TextStyle get bodySmall => GoogleFonts.inter(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.4,
        color: Colors.white,
      );
}
