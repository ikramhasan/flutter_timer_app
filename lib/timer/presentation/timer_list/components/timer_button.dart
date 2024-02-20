import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(64),
          color: AppColors.surfaceColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '00:30',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Spacings.horizontalSpacing8,
              SvgPicture.asset(
                SvgAssets.pause,
                height: 24,
                width: 24,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
