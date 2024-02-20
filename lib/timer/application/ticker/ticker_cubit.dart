import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_timer_app/timer/infrastructure/ticker_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticker_state.dart';
part 'ticker_cubit.freezed.dart';

class TickerCubit extends Cubit<TickerState> {
  TickerCubit() : super(TickerState.initial());
  final _ticker = TickerRepositoryImpl();

  StreamSubscription<int>? _tickerSubscription;

  void start() {
    emit(state.copyWith(isRunning: true));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick().listen(
          (duration) => emit(
            state.copyWith(duration: duration),
          ),
        );
  }

  void startOrPause() {
    if (state.isRunning) {
      pause();
    } else {
      start();
    }
  }

  void pause() {
    emit(state.copyWith(isRunning: false));
    _tickerSubscription?.pause();
  }

  void resume() {
    emit(state.copyWith(isRunning: true));
    _tickerSubscription?.resume();
  }

  void stop() {
    emit(state.copyWith(isRunning: false, duration: 0));
    _tickerSubscription?.cancel();
  }

  @override
  Future<void> close() {
    emit(state.copyWith(isRunning: false));
    _tickerSubscription?.cancel();
    return super.close();
  }
}
