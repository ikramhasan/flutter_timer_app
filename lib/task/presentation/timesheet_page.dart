import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/task/presentation/components/competed_task.dart';
import 'package:flutter_timer_app/task/presentation/components/timesheet_card.dart';

class TimesheetPage extends StatelessWidget {
  const TimesheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TimesheetCard(),
        Spacings.verticalSpacing16,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Completed Records',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const CompletedTask()
      ],
    );
  }
}
