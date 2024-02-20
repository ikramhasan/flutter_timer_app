part of 'timer_list_cubit.dart';

@freezed
class TimerListState with _$TimerListState {
  const factory TimerListState({
    required List<ProjectTimer> timers,
  }) = _TimerListState;

  factory TimerListState.initial() => const _TimerListState(
        timers: [],
      );
}
