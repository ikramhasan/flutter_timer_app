// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectTimer {
  String get id => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  String get task => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectTimerCopyWith<ProjectTimer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectTimerCopyWith<$Res> {
  factory $ProjectTimerCopyWith(
          ProjectTimer value, $Res Function(ProjectTimer) then) =
      _$ProjectTimerCopyWithImpl<$Res, ProjectTimer>;
  @useResult
  $Res call(
      {String id,
      String project,
      String task,
      String description,
      bool isFavorite});
}

/// @nodoc
class _$ProjectTimerCopyWithImpl<$Res, $Val extends ProjectTimer>
    implements $ProjectTimerCopyWith<$Res> {
  _$ProjectTimerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = null,
    Object? task = null,
    Object? description = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectTimerImplCopyWith<$Res>
    implements $ProjectTimerCopyWith<$Res> {
  factory _$$ProjectTimerImplCopyWith(
          _$ProjectTimerImpl value, $Res Function(_$ProjectTimerImpl) then) =
      __$$ProjectTimerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String project,
      String task,
      String description,
      bool isFavorite});
}

/// @nodoc
class __$$ProjectTimerImplCopyWithImpl<$Res>
    extends _$ProjectTimerCopyWithImpl<$Res, _$ProjectTimerImpl>
    implements _$$ProjectTimerImplCopyWith<$Res> {
  __$$ProjectTimerImplCopyWithImpl(
      _$ProjectTimerImpl _value, $Res Function(_$ProjectTimerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? project = null,
    Object? task = null,
    Object? description = null,
    Object? isFavorite = null,
  }) {
    return _then(_$ProjectTimerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProjectTimerImpl implements _ProjectTimer {
  const _$ProjectTimerImpl(
      {required this.id,
      required this.project,
      required this.task,
      required this.description,
      required this.isFavorite});

  @override
  final String id;
  @override
  final String project;
  @override
  final String task;
  @override
  final String description;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'ProjectTimer(id: $id, project: $project, task: $task, description: $description, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectTimerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, project, task, description, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectTimerImplCopyWith<_$ProjectTimerImpl> get copyWith =>
      __$$ProjectTimerImplCopyWithImpl<_$ProjectTimerImpl>(this, _$identity);
}

abstract class _ProjectTimer implements ProjectTimer {
  const factory _ProjectTimer(
      {required final String id,
      required final String project,
      required final String task,
      required final String description,
      required final bool isFavorite}) = _$ProjectTimerImpl;

  @override
  String get id;
  @override
  String get project;
  @override
  String get task;
  @override
  String get description;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$ProjectTimerImplCopyWith<_$ProjectTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
