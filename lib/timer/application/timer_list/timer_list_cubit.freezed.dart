// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerListState {
  List<ProjectTimer> get timers => throw _privateConstructorUsedError;
  ProjectTimer get selectedTimer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerListStateCopyWith<TimerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerListStateCopyWith<$Res> {
  factory $TimerListStateCopyWith(
          TimerListState value, $Res Function(TimerListState) then) =
      _$TimerListStateCopyWithImpl<$Res, TimerListState>;
  @useResult
  $Res call({List<ProjectTimer> timers, ProjectTimer selectedTimer});

  $ProjectTimerCopyWith<$Res> get selectedTimer;
}

/// @nodoc
class _$TimerListStateCopyWithImpl<$Res, $Val extends TimerListState>
    implements $TimerListStateCopyWith<$Res> {
  _$TimerListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timers = null,
    Object? selectedTimer = null,
  }) {
    return _then(_value.copyWith(
      timers: null == timers
          ? _value.timers
          : timers // ignore: cast_nullable_to_non_nullable
              as List<ProjectTimer>,
      selectedTimer: null == selectedTimer
          ? _value.selectedTimer
          : selectedTimer // ignore: cast_nullable_to_non_nullable
              as ProjectTimer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectTimerCopyWith<$Res> get selectedTimer {
    return $ProjectTimerCopyWith<$Res>(_value.selectedTimer, (value) {
      return _then(_value.copyWith(selectedTimer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimerListStateImplCopyWith<$Res>
    implements $TimerListStateCopyWith<$Res> {
  factory _$$TimerListStateImplCopyWith(_$TimerListStateImpl value,
          $Res Function(_$TimerListStateImpl) then) =
      __$$TimerListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProjectTimer> timers, ProjectTimer selectedTimer});

  @override
  $ProjectTimerCopyWith<$Res> get selectedTimer;
}

/// @nodoc
class __$$TimerListStateImplCopyWithImpl<$Res>
    extends _$TimerListStateCopyWithImpl<$Res, _$TimerListStateImpl>
    implements _$$TimerListStateImplCopyWith<$Res> {
  __$$TimerListStateImplCopyWithImpl(
      _$TimerListStateImpl _value, $Res Function(_$TimerListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timers = null,
    Object? selectedTimer = null,
  }) {
    return _then(_$TimerListStateImpl(
      timers: null == timers
          ? _value._timers
          : timers // ignore: cast_nullable_to_non_nullable
              as List<ProjectTimer>,
      selectedTimer: null == selectedTimer
          ? _value.selectedTimer
          : selectedTimer // ignore: cast_nullable_to_non_nullable
              as ProjectTimer,
    ));
  }
}

/// @nodoc

class _$TimerListStateImpl implements _TimerListState {
  const _$TimerListStateImpl(
      {required final List<ProjectTimer> timers, required this.selectedTimer})
      : _timers = timers;

  final List<ProjectTimer> _timers;
  @override
  List<ProjectTimer> get timers {
    if (_timers is EqualUnmodifiableListView) return _timers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timers);
  }

  @override
  final ProjectTimer selectedTimer;

  @override
  String toString() {
    return 'TimerListState(timers: $timers, selectedTimer: $selectedTimer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerListStateImpl &&
            const DeepCollectionEquality().equals(other._timers, _timers) &&
            (identical(other.selectedTimer, selectedTimer) ||
                other.selectedTimer == selectedTimer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_timers), selectedTimer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerListStateImplCopyWith<_$TimerListStateImpl> get copyWith =>
      __$$TimerListStateImplCopyWithImpl<_$TimerListStateImpl>(
          this, _$identity);
}

abstract class _TimerListState implements TimerListState {
  const factory _TimerListState(
      {required final List<ProjectTimer> timers,
      required final ProjectTimer selectedTimer}) = _$TimerListStateImpl;

  @override
  List<ProjectTimer> get timers;
  @override
  ProjectTimer get selectedTimer;
  @override
  @JsonKey(ignore: true)
  _$$TimerListStateImplCopyWith<_$TimerListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
