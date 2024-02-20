import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_scaffold.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/task/presentation/components/competed_task.dart';
import 'package:flutter_timer_app/task/presentation/components/task_details_card.dart';

class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({super.key});

  static const String route = '/task-details';

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text('Task Details'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(SvgAssets.pencil),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacings.verticalSpacing32,
          Spacings.verticalSpacing32,
          Spacings.verticalSpacing32,
          Spacings.verticalSpacing32,
          DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              dividerColor: AppColors.surfaceColor,
              indicatorColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Timesheets',
                ),
                Tab(
                  text: 'Details',
                ),
              ],
            ),
          ),
          const TaskDetailsCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Completed Records',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const CompletedTask(),
        ],
      ),
    );
  }
}
