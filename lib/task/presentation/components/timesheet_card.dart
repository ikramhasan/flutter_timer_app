import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_container.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';

class TimesheetCard extends StatelessWidget {
  const TimesheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTimer = context.read<TimerListCubit>().state.selectedTimer;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: PrimaryContainer(
        child: Column(
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
            Spacings.verticalSpacing8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '08:08:20',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.secondaryContainer,
                      ),
                      child: SvgPicture.asset(SvgAssets.stop),
                    ),
                    Spacings.horizontalSpacing16,
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: SvgPicture.asset(SvgAssets.pause),
                    ),
                  ],
                ),
              ],
            ),
            Spacings.verticalSpacing16,
            Divider(
              thickness: 1,
              color: AppColors.secondaryContainer,
            ),
            Spacings.verticalSpacing16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SvgPicture.asset(SvgAssets.pencil),
              ],
            ),
            Spacings.verticalSpacing12,
            Text(
              selectedTimer.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
