import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_form_state.dart';
part 'timer_form_cubit.freezed.dart';

class TimerFormCubit extends Cubit<TimerFormState> {
  TimerFormCubit() : super(TimerFormState.initial());

  void projectChanged(String value) {
    emit(state.copyWith(project: value));
  }

  void taskChanged(String value) {
    emit(state.copyWith(task: value));
  }

  void descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  void isFavoriteChanged(bool value) {
    emit(state.copyWith(isFavorite: value));
  }

  void createTimerButtonPressed() {
    emit(state.copyWith(showErrorMessages: true));
  }
}
