import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_scaffold.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/task/presentation/task_details_page.dart';
import 'package:flutter_timer_app/task/presentation/timesheet_page.dart';
import 'package:flutter_timer_app/timer/application/ticker/ticker_cubit.dart';
import 'package:go_router/go_router.dart';

class TaskPage extends HookWidget {
  const TaskPage({super.key});

  static const String route = '/task';

  @override
  Widget build(BuildContext context) {
    final selectedTabIndex = useState(0);
    final cubit = GoRouterState.of(context).extra as TickerCubit;

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
              onTap: (value) {
                selectedTabIndex.value = value;
              },
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
          selectedTabIndex.value == 0
              ? BlocProvider<TickerCubit>(
                  create: (context) => cubit,
                  child: TimesheetPage(),
                )
              : const Padding(
                  padding: EdgeInsets.all(16),
                  child: TaskDetailsPage(),
                ),
        ],
      ),
    );
  }
}
