abstract class TickerRepository {
  /// Ticks every second
  /// Returns a [Stream] of [int]
  Stream<int> tick();
}
