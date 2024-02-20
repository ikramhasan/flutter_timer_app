import 'package:flutter_timer_app/task/presentation/task_details_page.dart';
import 'package:flutter_timer_app/timer/presentation/create_timer/create_timer_page.dart';
import 'package:flutter_timer_app/timer/presentation/timer_list/timer_list_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const TimerListPage(),
    ),
    GoRoute(
      path: '/create-timer',
      builder: (context, state) => const CreateTimerPage(),
    ),
    GoRoute(
      path: '/task-details',
      builder: (context, state) => const TaskDetailsPage(),
    ),
  ],
);
