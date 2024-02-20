import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_scaffold.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';
import 'package:flutter_timer_app/timer/presentation/create_timer/components/create_timer_button.dart';
import 'package:flutter_timer_app/timer/presentation/create_timer/create_timer_page.dart';
import 'package:flutter_timer_app/timer/presentation/timer_list/components/empty_timer_list_widget.dart';
import 'package:flutter_timer_app/timer/presentation/timer_list/components/timer_card.dart';
import 'package:go_router/go_router.dart';

class TimerListPage extends StatelessWidget {
  const TimerListPage({super.key});

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      appBar: AppBar(
        title: const Text('Timesheets'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CreateTimerButton(
              onTap: () {
                context.push(CreateTimerPage.route);
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: BlocBuilder<TimerListCubit, TimerListState>(
          builder: (context, state) {
            if (state.timers.isEmpty) {
              return const EmptyTimerListWidget();
            } else {
              return Column(
                children: [
                  Spacings.verticalSpacing64,
                  Spacings.verticalSpacing64,
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: state.timers.length,
                    itemBuilder: (context, index) {
                      return TimerCard(
                        timer: state.timers[index],
                      );
                    },
                  ),
                  Spacings.verticalSpacing16,
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
