import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer.freezed.dart';

@freezed
class ProjectTimer with _$ProjectTimer {
  const factory ProjectTimer({
    required String id,
    required String project,
    required String task,
    required String description,
    required bool isFavorite,
  }) = _ProjectTimer;

  factory ProjectTimer.empty() => const _ProjectTimer(
        id: '',
        project: '',
        task: '',
        description: '',
        isFavorite: false,
      );
}
