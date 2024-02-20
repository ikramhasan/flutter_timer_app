import 'dart:async';

class TickerRepositoryImpl {
  late StreamController<int> _controller;
  late Timer _timer;
  late int _currentTick;

  TickerRepositoryImpl() {
    _controller = StreamController<int>(
      onListen: _startTicker,
      onPause: _pauseTicker,
      onResume: _resumeTicker,
      onCancel: _cancelTicker,
    );
    _currentTick = 0;
  }

  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (x) => x);
  }

  void _startTicker() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _controller.add(++_currentTick);
    });
  }

  void _pauseTicker() {
    _timer.cancel();
  }

  void _resumeTicker() {
    _startTicker();
  }

  void _cancelTicker() {
    _timer.cancel();
    _controller.close();
  }
}
