import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';

class PrimaryContainer extends StatelessWidget {
  const PrimaryContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.surfaceColor,
      ),
      child: child,
    );
  }
}
