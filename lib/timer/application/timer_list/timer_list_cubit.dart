import 'package:bloc/bloc.dart';
import 'package:flutter_timer_app/timer/domain/entities/timer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_list_state.dart';
part 'timer_list_cubit.freezed.dart';

class TimerListCubit extends Cubit<TimerListState> {
  TimerListCubit() : super(TimerListState.initial());

  void addTimer({
    required String project,
    required String task,
    required String description,
    required bool isFavorite,
  }) {
    final timers = [...state.timers];
    timers.add(
      ProjectTimer(
        id: DateTime.now().toIso8601String(),
        project: project,
        task: task,
        description: description,
        isFavorite: isFavorite,
      ),
    );
    emit(state.copyWith(timers: timers));
  }

  void selectTimer(ProjectTimer timer) {
    emit(state.copyWith(selectedTimer: timer));
  }
}
