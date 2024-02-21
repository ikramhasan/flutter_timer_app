import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/components/horizontal_divider_widget.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/task/presentation/task_page.dart';
import 'package:flutter_timer_app/timer/application/ticker/ticker_cubit.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';
import 'package:flutter_timer_app/timer/domain/entities/timer.dart';
import 'package:flutter_timer_app/timer/presentation/timer_list/components/timer_button.dart';
import 'package:go_router/go_router.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key, required this.timer});

  final ProjectTimer timer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TimerListCubit>().selectTimer(timer);
        context.push(TaskPage.route, extra: context.read<TickerCubit>());
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.surfaceColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.defaultPadding),
          child: Row(
            children: [
              const HorizontalDividerWidget(height: 80),
              Spacings.horizontalSpacing8,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        timer.isFavorite
                            ? Icons.star
                            : Icons.star_border_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      Spacings.horizontalSpacing4,
                      SizedBox(
                        width: 200,
                        child: Text(
                          timer.project,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                  Spacings.verticalSpacing6,
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgAssets.briefcase,
                        color: Colors.white,
                        height: 16,
                        width: 16,
                      ),
                      Spacings.horizontalSpacing4,
                      Text(
                        timer.task,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Spacings.verticalSpacing6,
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgAssets.clockOutlined,
                        color: Colors.white,
                        height: 16,
                        width: 16,
                      ),
                      Spacings.horizontalSpacing8,
                      Text(
                        'Deadline 07/20/2023',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              TimerButton(
                onTap: () {
                  context.read<TickerCubit>().startOrPause();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
