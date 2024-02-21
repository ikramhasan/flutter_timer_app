import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer.freezed.dart';

@freezed
class ProjectTimer with _$ProjectTimer {
  const factory ProjectTimer({
    required String id,
    required String project,
    required String task,
    required String description,
    required int duration,
    required bool isFavorite,
    required bool isComplete,
  }) = _ProjectTimer;

  factory ProjectTimer.empty() => const _ProjectTimer(
        id: '',
        project: '',
        task: '',
        description: '',
        duration: 0,
        isFavorite: false,
        isComplete: false,
      );
}
