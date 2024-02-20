import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_app/core/presentation/components/horizontal_divider_widget.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_container.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';

class TaskDetailsCard extends StatelessWidget {
  const TaskDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTimer = context.read<TimerListCubit>().state.selectedTimer;

    return Column(
      children: [
        PrimaryContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Spacings.verticalSpacing4,
              Row(
                children: [
                  const HorizontalDividerWidget(height: 24),
                  Spacings.horizontalSpacing8,
                  Text(
                    selectedTimer.project,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Spacings.verticalSpacing16,
              Text(
                'Deadline',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Spacings.verticalSpacing4,
              Text(
                '10/11/2023',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Spacings.verticalSpacing16,
              Text(
                'Assigned to',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Spacings.verticalSpacing4,
              Text(
                'Ivan Zhuikov',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        Spacings.verticalSpacing16,
        PrimaryContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Description',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Spacings.verticalSpacing4,
              Text(
                selectedTimer.description,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
