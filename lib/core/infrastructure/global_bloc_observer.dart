import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_timer_app/core/utils/logger.dart';

class GlobalBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d(
      '[${bloc.runtimeType}] $event',
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.d(
      '[${bloc.runtimeType}] $change',
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d(
      '[${bloc.runtimeType}] $transition',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.d(
      '[${bloc.runtimeType}] $error $stackTrace',
    );
  }
}
