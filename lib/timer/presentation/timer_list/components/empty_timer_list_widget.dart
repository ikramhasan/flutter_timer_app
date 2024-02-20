import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/presentation/create_timer/create_timer_page.dart';
import 'package:go_router/go_router.dart';

class EmptyTimerListWidget extends StatelessWidget {
  const EmptyTimerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: AppColors.surfaceColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: SvgPicture.asset(
              SvgAssets.clock,
              height: 96,
              width: 96,
            ),
          ),
        ),
        Spacings.verticalSpacing32,
        Text(
          'You don\'t have any local timesheets',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        Spacings.verticalSpacing8,
        Text(
          'Create a timer to to begin tracking time',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            context.push(CreateTimerPage.route);
          },
          child: const Text('Get Started'),
        ),
        Spacings.verticalSpacing32,
      ],
    );
  }
}
