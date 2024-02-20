import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';

class CreateTimerButton extends StatelessWidget {
  const CreateTimerButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.secondaryContainer,
        ),
        child: const Icon(
          Icons.add,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
