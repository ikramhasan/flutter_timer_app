// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerFormState {
  String? get project => throw _privateConstructorUsedError;
  String? get task => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerFormStateCopyWith<TimerFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerFormStateCopyWith<$Res> {
  factory $TimerFormStateCopyWith(
          TimerFormState value, $Res Function(TimerFormState) then) =
      _$TimerFormStateCopyWithImpl<$Res, TimerFormState>;
  @useResult
  $Res call(
      {String? project,
      String? task,
      String? description,
      bool isFavorite,
      bool showErrorMessages});
}

/// @nodoc
class _$TimerFormStateCopyWithImpl<$Res, $Val extends TimerFormState>
    implements $TimerFormStateCopyWith<$Res> {
  _$TimerFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = freezed,
    Object? task = freezed,
    Object? description = freezed,
    Object? isFavorite = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerFormStateImplCopyWith<$Res>
    implements $TimerFormStateCopyWith<$Res> {
  factory _$$TimerFormStateImplCopyWith(_$TimerFormStateImpl value,
          $Res Function(_$TimerFormStateImpl) then) =
      __$$TimerFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? project,
      String? task,
      String? description,
      bool isFavorite,
      bool showErrorMessages});
}

/// @nodoc
class __$$TimerFormStateImplCopyWithImpl<$Res>
    extends _$TimerFormStateCopyWithImpl<$Res, _$TimerFormStateImpl>
    implements _$$TimerFormStateImplCopyWith<$Res> {
  __$$TimerFormStateImplCopyWithImpl(
      _$TimerFormStateImpl _value, $Res Function(_$TimerFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = freezed,
    Object? task = freezed,
    Object? description = freezed,
    Object? isFavorite = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_$TimerFormStateImpl(
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String?,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimerFormStateImpl implements _TimerFormState {
  const _$TimerFormStateImpl(
      {this.project,
      this.task,
      this.description,
      required this.isFavorite,
      required this.showErrorMessages});

  @override
  final String? project;
  @override
  final String? task;
  @override
  final String? description;
  @override
  final bool isFavorite;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'TimerFormState(project: $project, task: $task, description: $description, isFavorite: $isFavorite, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerFormStateImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, project, task, description, isFavorite, showErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerFormStateImplCopyWith<_$TimerFormStateImpl> get copyWith =>
      __$$TimerFormStateImplCopyWithImpl<_$TimerFormStateImpl>(
          this, _$identity);
}

abstract class _TimerFormState implements TimerFormState {
  const factory _TimerFormState(
      {final String? project,
      final String? task,
      final String? description,
      required final bool isFavorite,
      required final bool showErrorMessages}) = _$TimerFormStateImpl;

  @override
  String? get project;
  @override
  String? get task;
  @override
  String? get description;
  @override
  bool get isFavorite;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$TimerFormStateImplCopyWith<_$TimerFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
