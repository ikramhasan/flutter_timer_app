import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/presentation/timer_list/components/timer_button.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.surfaceColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xFFFFC629),
              ),
            ),
            Spacings.horizontalSpacing8,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    Spacings.horizontalSpacing4,
                    Text(
                      'iOS app deployment',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Spacings.verticalSpacing6,
                Row(
                  children: [
                    const Icon(
                      Icons.work_outline,
                      color: Colors.white,
                      size: 18,
                    ),
                    Spacings.horizontalSpacing4,
                    Text(
                      'SO056 - Booqio V2',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Spacings.verticalSpacing6,
                Row(
                  children: [
                    const Icon(
                      Icons.schedule,
                      color: Colors.white,
                      size: 18,
                    ),
                    Spacings.horizontalSpacing4,
                    Text(
                      'Deadline 07/20/2023',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const TimerButton(),
          ],
        ),
      ),
    );
  }
}