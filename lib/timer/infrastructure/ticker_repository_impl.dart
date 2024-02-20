import 'dart:async';

import 'package:flutter_timer_app/timer/domain/interfaces/ticker_repository.dart';

class TickerRepositoryImpl implements TickerRepository {
  @override
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (x) => x);
  }
}
