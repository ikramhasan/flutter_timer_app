import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_app/core/infrastructure/global_bloc_observer.dart';

void bootstrapApp() {
  Bloc.observer = GlobalBlocObserver();
}
