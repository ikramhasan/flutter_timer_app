import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';

class CompletedTask extends StatelessWidget {
  const CompletedTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.surfaceColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(SvgAssets.checked),
                Spacings.horizontalSpacing8,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monday',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Spacings.verticalSpacing4,
                    Text(
                      '17.07.2023',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacings.verticalSpacing4,
                    Text(
                      'Start Time 10:00',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.secondaryContainer,
              ),
              child: Text(
                '08:00',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
