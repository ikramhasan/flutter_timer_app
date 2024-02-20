import 'package:flutter_timer_app/timer/presentation/timer_list/timer_list_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const TimerListPage(),
    ),
  ],
);
