part of 'ticker_cubit.dart';

@freezed
class TickerState with _$TickerState {
  const factory TickerState({
    required int duration,
    required bool isRunning,
  }) = _TickerState;

  factory TickerState.initial() => const _TickerState(
        duration: 0,
        isRunning: false,
      );
}
