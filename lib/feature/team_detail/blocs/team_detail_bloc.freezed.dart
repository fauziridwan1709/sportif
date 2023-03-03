// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamDetailStates {
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
    required TResult Function($TeamDetailInitializingState value) initializing,
    required TResult Function($TeamDetailLoadingState value) loading,
    required TResult Function($TeamDetailLoadedState value) loaded,
    required TResult Function($TeamDetailFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamDetailInitializingState value)? initializing,
    TResult? Function($TeamDetailLoadingState value)? loading,
    TResult? Function($TeamDetailLoadedState value)? loaded,
    TResult? Function($TeamDetailFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamDetailInitializingState value)? initializing,
    TResult Function($TeamDetailLoadingState value)? loading,
    TResult Function($TeamDetailLoadedState value)? loaded,
    TResult Function($TeamDetailFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDetailStatesCopyWith<$Res> {
  factory $TeamDetailStatesCopyWith(
          TeamDetailStates value, $Res Function(TeamDetailStates) then) =
      _$TeamDetailStatesCopyWithImpl<$Res, TeamDetailStates>;
}

/// @nodoc
class _$TeamDetailStatesCopyWithImpl<$Res, $Val extends TeamDetailStates>
    implements $TeamDetailStatesCopyWith<$Res> {
  _$TeamDetailStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$TeamDetailInitializingStateCopyWith<$Res> {
  factory _$$$TeamDetailInitializingStateCopyWith(
          _$$TeamDetailInitializingState value,
          $Res Function(_$$TeamDetailInitializingState) then) =
      __$$$TeamDetailInitializingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$TeamDetailInitializingStateCopyWithImpl<$Res>
    extends _$TeamDetailStatesCopyWithImpl<$Res, _$$TeamDetailInitializingState>
    implements _$$$TeamDetailInitializingStateCopyWith<$Res> {
  __$$$TeamDetailInitializingStateCopyWithImpl(
      _$$TeamDetailInitializingState _value,
      $Res Function(_$$TeamDetailInitializingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$TeamDetailInitializingState implements $TeamDetailInitializingState {
  const _$$TeamDetailInitializingState();

  @override
  String toString() {
    return 'TeamDetailStates.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TeamDetailInitializingState);
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
    required TResult Function($TeamDetailInitializingState value) initializing,
    required TResult Function($TeamDetailLoadingState value) loading,
    required TResult Function($TeamDetailLoadedState value) loaded,
    required TResult Function($TeamDetailFailureState value) failure,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamDetailInitializingState value)? initializing,
    TResult? Function($TeamDetailLoadingState value)? loading,
    TResult? Function($TeamDetailLoadedState value)? loaded,
    TResult? Function($TeamDetailFailureState value)? failure,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamDetailInitializingState value)? initializing,
    TResult Function($TeamDetailLoadingState value)? loading,
    TResult Function($TeamDetailLoadedState value)? loaded,
    TResult Function($TeamDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class $TeamDetailInitializingState implements TeamDetailStates {
  const factory $TeamDetailInitializingState() = _$$TeamDetailInitializingState;
}

/// @nodoc
abstract class _$$$TeamDetailLoadingStateCopyWith<$Res> {
  factory _$$$TeamDetailLoadingStateCopyWith(_$$TeamDetailLoadingState value,
          $Res Function(_$$TeamDetailLoadingState) then) =
      __$$$TeamDetailLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$TeamDetailLoadingStateCopyWithImpl<$Res>
    extends _$TeamDetailStatesCopyWithImpl<$Res, _$$TeamDetailLoadingState>
    implements _$$$TeamDetailLoadingStateCopyWith<$Res> {
  __$$$TeamDetailLoadingStateCopyWithImpl(_$$TeamDetailLoadingState _value,
      $Res Function(_$$TeamDetailLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$TeamDetailLoadingState implements $TeamDetailLoadingState {
  const _$$TeamDetailLoadingState();

  @override
  String toString() {
    return 'TeamDetailStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TeamDetailLoadingState);
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
    required TResult Function($TeamDetailInitializingState value) initializing,
    required TResult Function($TeamDetailLoadingState value) loading,
    required TResult Function($TeamDetailLoadedState value) loaded,
    required TResult Function($TeamDetailFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamDetailInitializingState value)? initializing,
    TResult? Function($TeamDetailLoadingState value)? loading,
    TResult? Function($TeamDetailLoadedState value)? loaded,
    TResult? Function($TeamDetailFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamDetailInitializingState value)? initializing,
    TResult Function($TeamDetailLoadingState value)? loading,
    TResult Function($TeamDetailLoadedState value)? loaded,
    TResult Function($TeamDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class $TeamDetailLoadingState implements TeamDetailStates {
  const factory $TeamDetailLoadingState() = _$$TeamDetailLoadingState;
}

/// @nodoc
abstract class _$$$TeamDetailLoadedStateCopyWith<$Res> {
  factory _$$$TeamDetailLoadedStateCopyWith(_$$TeamDetailLoadedState value,
          $Res Function(_$$TeamDetailLoadedState) then) =
      __$$$TeamDetailLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TeamResponse> teams});
}

/// @nodoc
class __$$$TeamDetailLoadedStateCopyWithImpl<$Res>
    extends _$TeamDetailStatesCopyWithImpl<$Res, _$$TeamDetailLoadedState>
    implements _$$$TeamDetailLoadedStateCopyWith<$Res> {
  __$$$TeamDetailLoadedStateCopyWithImpl(_$$TeamDetailLoadedState _value,
      $Res Function(_$$TeamDetailLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teams = null,
  }) {
    return _then(_$$TeamDetailLoadedState(
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<TeamResponse>,
    ));
  }
}

/// @nodoc

class _$$TeamDetailLoadedState implements $TeamDetailLoadedState {
  const _$$TeamDetailLoadedState({required final List<TeamResponse> teams})
      : _teams = teams;

  final List<TeamResponse> _teams;
  @override
  List<TeamResponse> get teams {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  @override
  String toString() {
    return 'TeamDetailStates.loaded(teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TeamDetailLoadedState &&
            const DeepCollectionEquality().equals(other._teams, _teams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TeamDetailLoadedStateCopyWith<_$$TeamDetailLoadedState> get copyWith =>
      __$$$TeamDetailLoadedStateCopyWithImpl<_$$TeamDetailLoadedState>(
          this, _$identity);

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
    required TResult Function($TeamDetailInitializingState value) initializing,
    required TResult Function($TeamDetailLoadingState value) loading,
    required TResult Function($TeamDetailLoadedState value) loaded,
    required TResult Function($TeamDetailFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamDetailInitializingState value)? initializing,
    TResult? Function($TeamDetailLoadingState value)? loading,
    TResult? Function($TeamDetailLoadedState value)? loaded,
    TResult? Function($TeamDetailFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamDetailInitializingState value)? initializing,
    TResult Function($TeamDetailLoadingState value)? loading,
    TResult Function($TeamDetailLoadedState value)? loaded,
    TResult Function($TeamDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class $TeamDetailLoadedState implements TeamDetailStates {
  const factory $TeamDetailLoadedState(
      {required final List<TeamResponse> teams}) = _$$TeamDetailLoadedState;

  List<TeamResponse> get teams;
  @JsonKey(ignore: true)
  _$$$TeamDetailLoadedStateCopyWith<_$$TeamDetailLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$TeamDetailFailureStateCopyWith<$Res> {
  factory _$$$TeamDetailFailureStateCopyWith(_$$TeamDetailFailureState value,
          $Res Function(_$$TeamDetailFailureState) then) =
      __$$$TeamDetailFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$$TeamDetailFailureStateCopyWithImpl<$Res>
    extends _$TeamDetailStatesCopyWithImpl<$Res, _$$TeamDetailFailureState>
    implements _$$$TeamDetailFailureStateCopyWith<$Res> {
  __$$$TeamDetailFailureStateCopyWithImpl(_$$TeamDetailFailureState _value,
      $Res Function(_$$TeamDetailFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$$TeamDetailFailureState(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$$TeamDetailFailureState implements $TeamDetailFailureState {
  const _$$TeamDetailFailureState({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TeamDetailStates.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TeamDetailFailureState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TeamDetailFailureStateCopyWith<_$$TeamDetailFailureState> get copyWith =>
      __$$$TeamDetailFailureStateCopyWithImpl<_$$TeamDetailFailureState>(
          this, _$identity);

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
    required TResult Function($TeamDetailInitializingState value) initializing,
    required TResult Function($TeamDetailLoadingState value) loading,
    required TResult Function($TeamDetailLoadedState value) loaded,
    required TResult Function($TeamDetailFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function($TeamDetailInitializingState value)? initializing,
    TResult? Function($TeamDetailLoadingState value)? loading,
    TResult? Function($TeamDetailLoadedState value)? loaded,
    TResult? Function($TeamDetailFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function($TeamDetailInitializingState value)? initializing,
    TResult Function($TeamDetailLoadingState value)? loading,
    TResult Function($TeamDetailLoadedState value)? loaded,
    TResult Function($TeamDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class $TeamDetailFailureState implements TeamDetailStates {
  const factory $TeamDetailFailureState({required final Failure failure}) =
      _$$TeamDetailFailureState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$$TeamDetailFailureStateCopyWith<_$$TeamDetailFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
