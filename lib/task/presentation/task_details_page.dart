import 'package:flutter/material.dart';
import 'package:flutter_timer_app/task/presentation/components/task_details_card.dart';

class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskDetailsCard(),
      ],
    );
  }
}
