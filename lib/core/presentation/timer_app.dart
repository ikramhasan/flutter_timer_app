import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/presentation/routes/routes.dart';
import 'package:flutter_timer_app/core/presentation/styles/themes.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Timer',
      theme: AppThemes.light,
      routerConfig: goRouter,
    );
  }
}
