part of 'timer_list_cubit.dart';

@freezed
class TimerListState with _$TimerListState {
  const factory TimerListState({
    required List<ProjectTimer> timers,
    required ProjectTimer selectedTimer,
  }) = _TimerListState;

  factory TimerListState.initial() =>  _TimerListState(
        timers: [],
        selectedTimer: ProjectTimer.empty(),
      );
}
