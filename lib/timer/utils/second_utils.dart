String formatToMinuteSeconds(int seconds) {
  final Duration duration = Duration(seconds: seconds);
  final int minutes = duration.inMinutes;
  final int remainingSeconds = duration.inSeconds.remainder(60);
  return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
}

String formatToHourMinuteSeconds(int seconds) {
  final Duration duration = Duration(seconds: seconds);
  final int hours = duration.inHours;
  final int minutes = duration.inMinutes.remainder(60);
  final int remainingSeconds = duration.inSeconds.remainder(60);
  return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
}
