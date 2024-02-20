import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_timer_app/core/utils/logger.dart';
import 'package:flutter_timer_app/timer/infrastructure/ticker_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticker_state.dart';
part 'ticker_cubit.freezed.dart';

class TickerCubit extends Cubit<TickerState> {
  TickerCubit() : super(TickerState.initial());
  var _ticker = TickerRepositoryImpl();

  StreamSubscription<int>? _tickerSubscription;

  void _start() {
    emit(state.copyWith(isRunning: true));

    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick().listen(
          (durationInSeconds) => emit(
            state.copyWith(
              duration: durationInSeconds,
            ),
          ),
        );
  }

  void startOrPause() {
    logger.d(state.duration);
    logger.d(state.isRunning);
    if (state.duration == 0 && !state.isRunning) {
      _start();
    } else if (!state.isRunning && state.duration > 0) {
      _resume();
    } else if (state.isRunning) {
      _pause();
    }
  }

  void _pause() {
    emit(state.copyWith(isRunning: false));
    _tickerSubscription?.pause();
  }

  void _resume() {
    emit(state.copyWith(isRunning: true));
    _tickerSubscription?.resume();
  }

  void stop() {
    emit(state.copyWith(isRunning: false, duration: 0));
    _tickerSubscription?.pause();
    _tickerSubscription = null;
    _ticker = TickerRepositoryImpl();
  }

  @override
  // ignore: must_call_super
  Future<void> close() async {}
}
