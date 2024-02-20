import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/text_styles.dart';

class AppThemes {
  static ThemeData get light => ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          titleTextStyle: AppTextStyles.headlineLarge,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondaryContainer,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppConstants.defaultBorderRadius,
              ),
            ),
            foregroundColor: Colors.white,
            textStyle: AppTextStyles.labelLarge,
            minimumSize: const Size(double.infinity, 48),
          ),
        ),
        // dropdownMenuTheme: DropdownMenuThemeData(
        //   menuStyle: MenuStyle(
        //     shape: MaterialStateProperty.resolveWith(
        //       (states) => RoundedRectangleBorder(
        //         side: const BorderSide(
        //           color: Colors.white,
        //           width: 1,
        //         ),
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //     ),
        //     minimumSize: MaterialStateProperty.all(
        //       const Size(double.infinity, 56),
        //     ),
        //   ),
        //   inputDecorationTheme: InputDecorationTheme(
        //     focusColor: Colors.white,
        //     border: OutlineInputBorder(
        //       borderRadius: BorderRadius.circular(8),
        //     ),
        //   ),
        //   textStyle: AppTextStyles.bodyLarge,
        // ),
        textTheme: TextTheme(
          displayLarge: AppTextStyles.displayLarge,
          displayMedium: AppTextStyles.displayMedium,
          displaySmall: AppTextStyles.displaySmall,
          headlineLarge: AppTextStyles.headlineLarge,
          headlineMedium: AppTextStyles.headlineMedium,
          headlineSmall: AppTextStyles.headlineSmall,
          titleLarge: AppTextStyles.titleLarge,
          titleMedium: AppTextStyles.titleMedium,
          titleSmall: AppTextStyles.titleSmall,
          labelLarge: AppTextStyles.labelLarge,
          labelMedium: AppTextStyles.labelMedium,
          labelSmall: AppTextStyles.labelSmall,
          bodyLarge: AppTextStyles.bodyLarge,
          bodyMedium: AppTextStyles.bodyMedium,
          bodySmall: AppTextStyles.bodySmall,
        ),
      );

  // Unimplemented, since requirement is to only implement light theme
  static ThemeData get dark => ThemeData();
}
