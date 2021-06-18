// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserScreenEventTearOff {
  const _$UserScreenEventTearOff();

// ignore: unused_element
  _StartedEvent started() {
    return const _StartedEvent();
  }

// ignore: unused_element
  _GetDetailUserEvent getDetailUser() {
    return const _GetDetailUserEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $UserScreenEvent = _$UserScreenEventTearOff();

/// @nodoc
mixin _$UserScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getDetailUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getDetailUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_StartedEvent value),
    @required TResult getDetailUser(_GetDetailUserEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_StartedEvent value),
    TResult getDetailUser(_GetDetailUserEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserScreenEventCopyWith<$Res> {
  factory $UserScreenEventCopyWith(
          UserScreenEvent value, $Res Function(UserScreenEvent) then) =
      _$UserScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserScreenEventCopyWithImpl<$Res>
    implements $UserScreenEventCopyWith<$Res> {
  _$UserScreenEventCopyWithImpl(this._value, this._then);

  final UserScreenEvent _value;
  // ignore: unused_field
  final $Res Function(UserScreenEvent) _then;
}

/// @nodoc
abstract class _$StartedEventCopyWith<$Res> {
  factory _$StartedEventCopyWith(
          _StartedEvent value, $Res Function(_StartedEvent) then) =
      __$StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedEventCopyWithImpl<$Res>
    extends _$UserScreenEventCopyWithImpl<$Res>
    implements _$StartedEventCopyWith<$Res> {
  __$StartedEventCopyWithImpl(
      _StartedEvent _value, $Res Function(_StartedEvent) _then)
      : super(_value, (v) => _then(v as _StartedEvent));

  @override
  _StartedEvent get _value => super._value as _StartedEvent;
}

/// @nodoc
class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent();

  @override
  String toString() {
    return 'UserScreenEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getDetailUser(),
  }) {
    assert(started != null);
    assert(getDetailUser != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getDetailUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_StartedEvent value),
    @required TResult getDetailUser(_GetDetailUserEvent value),
  }) {
    assert(started != null);
    assert(getDetailUser != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_StartedEvent value),
    TResult getDetailUser(_GetDetailUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements UserScreenEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$GetDetailUserEventCopyWith<$Res> {
  factory _$GetDetailUserEventCopyWith(
          _GetDetailUserEvent value, $Res Function(_GetDetailUserEvent) then) =
      __$GetDetailUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDetailUserEventCopyWithImpl<$Res>
    extends _$UserScreenEventCopyWithImpl<$Res>
    implements _$GetDetailUserEventCopyWith<$Res> {
  __$GetDetailUserEventCopyWithImpl(
      _GetDetailUserEvent _value, $Res Function(_GetDetailUserEvent) _then)
      : super(_value, (v) => _then(v as _GetDetailUserEvent));

  @override
  _GetDetailUserEvent get _value => super._value as _GetDetailUserEvent;
}

/// @nodoc
class _$_GetDetailUserEvent implements _GetDetailUserEvent {
  const _$_GetDetailUserEvent();

  @override
  String toString() {
    return 'UserScreenEvent.getDetailUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDetailUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult getDetailUser(),
  }) {
    assert(started != null);
    assert(getDetailUser != null);
    return getDetailUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult getDetailUser(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getDetailUser != null) {
      return getDetailUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_StartedEvent value),
    @required TResult getDetailUser(_GetDetailUserEvent value),
  }) {
    assert(started != null);
    assert(getDetailUser != null);
    return getDetailUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_StartedEvent value),
    TResult getDetailUser(_GetDetailUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getDetailUser != null) {
      return getDetailUser(this);
    }
    return orElse();
  }
}

abstract class _GetDetailUserEvent implements UserScreenEvent {
  const factory _GetDetailUserEvent() = _$_GetDetailUserEvent;
}

/// @nodoc
class _$UserScreenStateTearOff {
  const _$UserScreenStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _LoadingState loading() {
    return const _LoadingState();
  }

// ignore: unused_element
  _ErrorState error() {
    return const _ErrorState();
  }

// ignore: unused_element
  _DataState data() {
    return const _DataState();
  }
}

/// @nodoc
// ignore: unused_element
const $UserScreenState = _$UserScreenStateTearOff();

/// @nodoc
mixin _$UserScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult data(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(),
    TResult data(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult data(_DataState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult data(_DataState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserScreenStateCopyWith<$Res> {
  factory $UserScreenStateCopyWith(
          UserScreenState value, $Res Function(UserScreenState) then) =
      _$UserScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserScreenStateCopyWithImpl<$Res>
    implements $UserScreenStateCopyWith<$Res> {
  _$UserScreenStateCopyWithImpl(this._value, this._then);

  final UserScreenState _value;
  // ignore: unused_field
  final $Res Function(UserScreenState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

/// @nodoc
class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'UserScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult data(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult data(_DataState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult data(_DataState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements UserScreenState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc
class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'UserScreenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult data(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult data(_DataState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult data(_DataState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements UserScreenState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;
}

/// @nodoc
class _$_ErrorState implements _ErrorState {
  const _$_ErrorState();

  @override
  String toString() {
    return 'UserScreenState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult data(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult data(_DataState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult data(_DataState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements UserScreenState {
  const factory _ErrorState() = _$_ErrorState;
}

/// @nodoc
abstract class _$DataStateCopyWith<$Res> {
  factory _$DataStateCopyWith(
          _DataState value, $Res Function(_DataState) then) =
      __$DataStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataStateCopyWithImpl<$Res> extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$DataStateCopyWith<$Res> {
  __$DataStateCopyWithImpl(_DataState _value, $Res Function(_DataState) _then)
      : super(_value, (v) => _then(v as _DataState));

  @override
  _DataState get _value => super._value as _DataState;
}

/// @nodoc
class _$_DataState implements _DataState {
  const _$_DataState();

  @override
  String toString() {
    return 'UserScreenState.data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DataState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(),
    @required TResult data(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return data();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_InitialState value),
    @required TResult loading(_LoadingState value),
    @required TResult error(_ErrorState value),
    @required TResult data(_DataState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_InitialState value),
    TResult loading(_LoadingState value),
    TResult error(_ErrorState value),
    TResult data(_DataState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements UserScreenState {
  const factory _DataState() = _$_DataState;
}
