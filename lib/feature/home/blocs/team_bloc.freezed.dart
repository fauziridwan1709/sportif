// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() loading,
    required TResult Function(List<TeamResponse> teams) loaded,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? loading,
    TResult? Function(List<TeamResponse> teams)? loaded,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? loading,
    TResult Function(List<TeamResponse> teams)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($TeamInitializingState value) initializing,
    required TResult Function($TeamLoadingState value) loading,
    required TResult Function($TeamLoadedState value) loaded,
    required TResult Function($TeamFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamInitializingState value)? initializing,
    TResult? Function($TeamLoadingState value)? loading,
    TResult? Function($TeamLoadedState value)? loaded,
    TResult? Function($TeamFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamInitializingState value)? initializing,
    TResult Function($TeamLoadingState value)? loading,
    TResult Function($TeamLoadedState value)? loaded,
    TResult Function($TeamFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStatesCopyWith<$Res> {
  factory $TeamStatesCopyWith(
          TeamStates value, $Res Function(TeamStates) then) =
      _$TeamStatesCopyWithImpl<$Res, TeamStates>;
}

/// @nodoc
class _$TeamStatesCopyWithImpl<$Res, $Val extends TeamStates>
    implements $TeamStatesCopyWith<$Res> {
  _$TeamStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$TeamInitializingStateCopyWith<$Res> {
  factory _$$$TeamInitializingStateCopyWith(_$$TeamInitializingState value,
          $Res Function(_$$TeamInitializingState) then) =
      __$$$TeamInitializingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$TeamInitializingStateCopyWithImpl<$Res>
    extends _$TeamStatesCopyWithImpl<$Res, _$$TeamInitializingState>
    implements _$$$TeamInitializingStateCopyWith<$Res> {
  __$$$TeamInitializingStateCopyWithImpl(_$$TeamInitializingState _value,
      $Res Function(_$$TeamInitializingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$TeamInitializingState implements $TeamInitializingState {
  const _$$TeamInitializingState();

  @override
  String toString() {
    return 'TeamStates.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$TeamInitializingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() loading,
    required TResult Function(List<TeamResponse> teams) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? loading,
    TResult? Function(List<TeamResponse> teams)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? loading,
    TResult Function(List<TeamResponse> teams)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($TeamInitializingState value) initializing,
    required TResult Function($TeamLoadingState value) loading,
    required TResult Function($TeamLoadedState value) loaded,
    required TResult Function($TeamFailureState value) failure,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamInitializingState value)? initializing,
    TResult? Function($TeamLoadingState value)? loading,
    TResult? Function($TeamLoadedState value)? loaded,
    TResult? Function($TeamFailureState value)? failure,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamInitializingState value)? initializing,
    TResult Function($TeamLoadingState value)? loading,
    TResult Function($TeamLoadedState value)? loaded,
    TResult Function($TeamFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class $TeamInitializingState implements TeamStates {
  const factory $TeamInitializingState() = _$$TeamInitializingState;
}

/// @nodoc
abstract class _$$$TeamLoadingStateCopyWith<$Res> {
  factory _$$$TeamLoadingStateCopyWith(
          _$$TeamLoadingState value, $Res Function(_$$TeamLoadingState) then) =
      __$$$TeamLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$TeamLoadingStateCopyWithImpl<$Res>
    extends _$TeamStatesCopyWithImpl<$Res, _$$TeamLoadingState>
    implements _$$$TeamLoadingStateCopyWith<$Res> {
  __$$$TeamLoadingStateCopyWithImpl(
      _$$TeamLoadingState _value, $Res Function(_$$TeamLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$TeamLoadingState implements $TeamLoadingState {
  const _$$TeamLoadingState();

  @override
  String toString() {
    return 'TeamStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$TeamLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() loading,
    required TResult Function(List<TeamResponse> teams) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? loading,
    TResult? Function(List<TeamResponse> teams)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? loading,
    TResult Function(List<TeamResponse> teams)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($TeamInitializingState value) initializing,
    required TResult Function($TeamLoadingState value) loading,
    required TResult Function($TeamLoadedState value) loaded,
    required TResult Function($TeamFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamInitializingState value)? initializing,
    TResult? Function($TeamLoadingState value)? loading,
    TResult? Function($TeamLoadedState value)? loaded,
    TResult? Function($TeamFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamInitializingState value)? initializing,
    TResult Function($TeamLoadingState value)? loading,
    TResult Function($TeamLoadedState value)? loaded,
    TResult Function($TeamFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class $TeamLoadingState implements TeamStates {
  const factory $TeamLoadingState() = _$$TeamLoadingState;
}

/// @nodoc
abstract class _$$$TeamLoadedStateCopyWith<$Res> {
  factory _$$$TeamLoadedStateCopyWith(
          _$$TeamLoadedState value, $Res Function(_$$TeamLoadedState) then) =
      __$$$TeamLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TeamResponse> teams});
}

/// @nodoc
class __$$$TeamLoadedStateCopyWithImpl<$Res>
    extends _$TeamStatesCopyWithImpl<$Res, _$$TeamLoadedState>
    implements _$$$TeamLoadedStateCopyWith<$Res> {
  __$$$TeamLoadedStateCopyWithImpl(
      _$$TeamLoadedState _value, $Res Function(_$$TeamLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = null,
  }) {
    return _then(_$$TeamLoadedState(
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamResponse>,
    ));
  }
}

/// @nodoc

class _$$TeamLoadedState implements $TeamLoadedState {
  const _$$TeamLoadedState({required final List<TeamResponse> teams})
      : _teams = teams;

  final List<TeamResponse> _teams;
  @override
  List<TeamResponse> get teams {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'TeamStates.loaded(teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TeamLoadedState &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TeamLoadedStateCopyWith<_$$TeamLoadedState> get copyWith =>
      __$$$TeamLoadedStateCopyWithImpl<_$$TeamLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() loading,
    required TResult Function(List<TeamResponse> teams) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return loaded(teams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? loading,
    TResult? Function(List<TeamResponse> teams)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return loaded?.call(teams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? loading,
    TResult Function(List<TeamResponse> teams)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(teams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($TeamInitializingState value) initializing,
    required TResult Function($TeamLoadingState value) loading,
    required TResult Function($TeamLoadedState value) loaded,
    required TResult Function($TeamFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamInitializingState value)? initializing,
    TResult? Function($TeamLoadingState value)? loading,
    TResult? Function($TeamLoadedState value)? loaded,
    TResult? Function($TeamFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamInitializingState value)? initializing,
    TResult Function($TeamLoadingState value)? loading,
    TResult Function($TeamLoadedState value)? loaded,
    TResult Function($TeamFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class $TeamLoadedState implements TeamStates {
  const factory $TeamLoadedState({required final List<TeamResponse> teams}) =
      _$$TeamLoadedState;

  List<TeamResponse> get teams;
  @JsonKey(ignore: true)
  _$$$TeamLoadedStateCopyWith<_$$TeamLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$TeamFailureStateCopyWith<$Res> {
  factory _$$$TeamFailureStateCopyWith(
          _$$TeamFailureState value, $Res Function(_$$TeamFailureState) then) =
      __$$$TeamFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$$TeamFailureStateCopyWithImpl<$Res>
    extends _$TeamStatesCopyWithImpl<$Res, _$$TeamFailureState>
    implements _$$$TeamFailureStateCopyWith<$Res> {
  __$$$TeamFailureStateCopyWithImpl(
      _$$TeamFailureState _value, $Res Function(_$$TeamFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$$TeamFailureState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$$TeamFailureState implements $TeamFailureState {
  const _$$TeamFailureState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TeamStates.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TeamFailureState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TeamFailureStateCopyWith<_$$TeamFailureState> get copyWith =>
      __$$$TeamFailureStateCopyWithImpl<_$$TeamFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() loading,
    required TResult Function(List<TeamResponse> teams) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? loading,
    TResult? Function(List<TeamResponse> teams)? loaded,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? loading,
    TResult Function(List<TeamResponse> teams)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function($TeamInitializingState value) initializing,
    required TResult Function($TeamLoadingState value) loading,
    required TResult Function($TeamLoadedState value) loaded,
    required TResult Function($TeamFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamInitializingState value)? initializing,
    TResult? Function($TeamLoadingState value)? loading,
    TResult? Function($TeamLoadedState value)? loaded,
    TResult? Function($TeamFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamInitializingState value)? initializing,
    TResult Function($TeamLoadingState value)? loading,
    TResult Function($TeamLoadedState value)? loaded,
    TResult Function($TeamFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class $TeamFailureState implements TeamStates {
  const factory $TeamFailureState({required final Failure failure}) =
      _$$TeamFailureState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$$TeamFailureStateCopyWith<_$$TeamFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
