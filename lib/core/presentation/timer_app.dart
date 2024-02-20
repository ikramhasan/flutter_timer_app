import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/presentation/routes/routes.dart';
import 'package:flutter_timer_app/core/presentation/styles/themes.dart';
import 'package:flutter_timer_app/timer/application/timer_form/timer_form_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TimerFormCubit>(
          create: (context) => TimerFormCubit(),
        ),
        BlocProvider<TimerListCubit>(
          create: (context) => TimerListCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Timer',
        theme: AppThemes.light,
        routerConfig: goRouter,
      ),
    );
  }
}
