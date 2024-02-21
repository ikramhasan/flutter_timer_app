import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_container.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/application/ticker/ticker_cubit.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';
import 'package:flutter_timer_app/timer/utils/second_utils.dart';

class TimesheetCard extends StatelessWidget {
  const TimesheetCard({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTimer = context.read<TimerListCubit>().state.selectedTimer;

    return selectedTimer.isComplete
        ? const SizedBox.shrink()
        : Padding(
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
                        formatToHourMinuteSeconds(
                          context.watch<TickerCubit>().state.duration,
                        ),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      BlocBuilder<TickerCubit, TickerState>(
                        builder: (context, state) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context.read<TickerCubit>().stop();
                                  context
                                      .read<TimerListCubit>()
                                      .markTimerAsComplete(
                                        selectedTimer,
                                        state.duration,
                                      );
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppColors.secondaryContainer,
                                  ),
                                  child: SvgPicture.asset(SvgAssets.stop),
                                ),
                              ),
                              Spacings.horizontalSpacing16,
                              GestureDetector(
                                onTap: () =>
                                    context.read<TickerCubit>().startOrPause(),
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white,
                                  ),
                                  child: SvgPicture.asset(
                                    state.isRunning
                                        ? SvgAssets.pause
                                        : SvgAssets.play,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
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
