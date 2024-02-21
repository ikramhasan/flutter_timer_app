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
        duration: 0,
        task: task,
        description: description,
        isFavorite: isFavorite,
        isComplete: false,
      ),
    );
    emit(state.copyWith(timers: timers));
  }

  void selectTimer(ProjectTimer timer) {
    emit(state.copyWith(selectedTimer: timer));
  }

  void markTimerAsComplete(ProjectTimer timer, int duration) {
    final timers = state.timers.map((t) {
      if (t.id == timer.id) {
        return t.copyWith(isComplete: true, duration: duration);
      }
      return t;
    }).toList();
    emit(
      state.copyWith(
        timers: timers,
        selectedTimer: timer.copyWith(isComplete: true, duration: duration),
      ),
    );
  }
}
