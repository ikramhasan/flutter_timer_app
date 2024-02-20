import 'dart:async';

class TickerRepositoryImpl {
  Stream<int> tick() {
    return Stream.periodic(const Duration(seconds: 1), (x) => x);
  }
}
