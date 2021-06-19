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
  _StartedEvent initial() {
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
    @required TResult initial(),
    @required TResult getDetailUser(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getDetailUser(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StartedEvent value),
    @required TResult getDetailUser(_GetDetailUserEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
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
    return 'UserScreenEvent.initial()';
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
    @required TResult initial(),
    @required TResult getDetailUser(),
  }) {
    assert(initial != null);
    assert(getDetailUser != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult getDetailUser(),
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
    @required TResult initial(_StartedEvent value),
    @required TResult getDetailUser(_GetDetailUserEvent value),
  }) {
    assert(initial != null);
    assert(getDetailUser != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
    TResult getDetailUser(_GetDetailUserEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
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
    @required TResult initial(),
    @required TResult getDetailUser(),
  }) {
    assert(initial != null);
    assert(getDetailUser != null);
    return getDetailUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
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
    @required TResult initial(_StartedEvent value),
    @required TResult getDetailUser(_GetDetailUserEvent value),
  }) {
    assert(initial != null);
    assert(getDetailUser != null);
    return getDetailUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
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
  _ErrorState error({@required String errorMessage}) {
    return _ErrorState(
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  _DataState data({@required List<User> userList}) {
    return _DataState(
      userList: userList,
    );
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
    @required TResult error(String errorMessage),
    @required TResult data(List<User> userList),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String errorMessage),
    TResult data(List<User> userList),
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
    @required TResult error(String errorMessage),
    @required TResult data(List<User> userList),
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
    TResult error(String errorMessage),
    TResult data(List<User> userList),
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
    @required TResult error(String errorMessage),
    @required TResult data(List<User> userList),
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
    TResult error(String errorMessage),
    TResult data(List<User> userList),
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
  $Res call({String errorMessage});
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

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_ErrorState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ErrorState implements _ErrorState {
  const _$_ErrorState({@required this.errorMessage})
      : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UserScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ErrorStateCopyWith<_ErrorState> get copyWith =>
      __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult data(List<User> userList),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String errorMessage),
    TResult data(List<User> userList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
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
  const factory _ErrorState({@required String errorMessage}) = _$_ErrorState;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$ErrorStateCopyWith<_ErrorState> get copyWith;
}

/// @nodoc
abstract class _$DataStateCopyWith<$Res> {
  factory _$DataStateCopyWith(
          _DataState value, $Res Function(_DataState) then) =
      __$DataStateCopyWithImpl<$Res>;
  $Res call({List<User> userList});
}

/// @nodoc
class __$DataStateCopyWithImpl<$Res> extends _$UserScreenStateCopyWithImpl<$Res>
    implements _$DataStateCopyWith<$Res> {
  __$DataStateCopyWithImpl(_DataState _value, $Res Function(_DataState) _then)
      : super(_value, (v) => _then(v as _DataState));

  @override
  _DataState get _value => super._value as _DataState;

  @override
  $Res call({
    Object userList = freezed,
  }) {
    return _then(_DataState(
      userList: userList == freezed ? _value.userList : userList as List<User>,
    ));
  }
}

/// @nodoc
class _$_DataState implements _DataState {
  const _$_DataState({@required this.userList}) : assert(userList != null);

  @override
  final List<User> userList;

  @override
  String toString() {
    return 'UserScreenState.data(userList: $userList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataState &&
            (identical(other.userList, userList) ||
                const DeepCollectionEquality()
                    .equals(other.userList, userList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userList);

  @JsonKey(ignore: true)
  @override
  _$DataStateCopyWith<_DataState> get copyWith =>
      __$DataStateCopyWithImpl<_DataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult data(List<User> userList),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return data(userList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String errorMessage),
    TResult data(List<User> userList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(userList);
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
  const factory _DataState({@required List<User> userList}) = _$_DataState;

  List<User> get userList;
  @JsonKey(ignore: true)
  _$DataStateCopyWith<_DataState> get copyWith;
}
