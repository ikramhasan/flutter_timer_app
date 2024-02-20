part of 'ticker_cubit.dart';

@freezed
class TickerState with _$TickerState {
  const factory TickerState({
    required int duration,
    required bool isRunning,
    required bool stopped,
  }) = _TickerState;

  factory TickerState.initial() => const _TickerState(
        duration: 0,
        isRunning: false,
        stopped: false,
      );
}
