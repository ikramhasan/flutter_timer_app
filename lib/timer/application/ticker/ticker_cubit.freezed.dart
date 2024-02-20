// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TickerState {
  int get duration => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  bool get stopped => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TickerStateCopyWith<TickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickerStateCopyWith<$Res> {
  factory $TickerStateCopyWith(
          TickerState value, $Res Function(TickerState) then) =
      _$TickerStateCopyWithImpl<$Res, TickerState>;
  @useResult
  $Res call({int duration, bool isRunning, bool stopped});
}

/// @nodoc
class _$TickerStateCopyWithImpl<$Res, $Val extends TickerState>
    implements $TickerStateCopyWith<$Res> {
  _$TickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? isRunning = null,
    Object? stopped = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      stopped: null == stopped
          ? _value.stopped
          : stopped // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TickerStateImplCopyWith<$Res>
    implements $TickerStateCopyWith<$Res> {
  factory _$$TickerStateImplCopyWith(
          _$TickerStateImpl value, $Res Function(_$TickerStateImpl) then) =
      __$$TickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int duration, bool isRunning, bool stopped});
}

/// @nodoc
class __$$TickerStateImplCopyWithImpl<$Res>
    extends _$TickerStateCopyWithImpl<$Res, _$TickerStateImpl>
    implements _$$TickerStateImplCopyWith<$Res> {
  __$$TickerStateImplCopyWithImpl(
      _$TickerStateImpl _value, $Res Function(_$TickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? isRunning = null,
    Object? stopped = null,
  }) {
    return _then(_$TickerStateImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      stopped: null == stopped
          ? _value.stopped
          : stopped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TickerStateImpl implements _TickerState {
  const _$TickerStateImpl(
      {required this.duration, required this.isRunning, required this.stopped});

  @override
  final int duration;
  @override
  final bool isRunning;
  @override
  final bool stopped;

  @override
  String toString() {
    return 'TickerState(duration: $duration, isRunning: $isRunning, stopped: $stopped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TickerStateImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isRunning, isRunning) ||
                other.isRunning == isRunning) &&
            (identical(other.stopped, stopped) || other.stopped == stopped));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, isRunning, stopped);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TickerStateImplCopyWith<_$TickerStateImpl> get copyWith =>
      __$$TickerStateImplCopyWithImpl<_$TickerStateImpl>(this, _$identity);
}

abstract class _TickerState implements TickerState {
  const factory _TickerState(
      {required final int duration,
      required final bool isRunning,
      required final bool stopped}) = _$TickerStateImpl;

  @override
  int get duration;
  @override
  bool get isRunning;
  @override
  bool get stopped;
  @override
  @JsonKey(ignore: true)
  _$$TickerStateImplCopyWith<_$TickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}