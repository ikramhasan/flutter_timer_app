part of 'timer_form_cubit.dart';

@freezed
class TimerFormState with _$TimerFormState {
  const factory TimerFormState({
    String? project,
    String? task,
    String? description,
    required bool isFavorite,
    required bool showErrorMessages,
  }) = _TimerFormState;

  factory TimerFormState.initial() => const _TimerFormState(
        showErrorMessages: false,
        isFavorite: false,
      );
}
