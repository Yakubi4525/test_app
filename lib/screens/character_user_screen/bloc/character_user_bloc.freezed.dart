// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'character_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CharacterUserEventTearOff {
  const _$CharacterUserEventTearOff();

// ignore: unused_element
  _StartedEvent initial({@required int userId}) {
    return _StartedEvent(
      userId: userId,
    );
  }

// ignore: unused_element
  _ShowAllPost showAllPosts({@required int userId}) {
    return _ShowAllPost(
      userId: userId,
    );
  }

// ignore: unused_element
  _ShowAllAlbums showAllAlbums({@required int userId}) {
    return _ShowAllAlbums(
      userId: userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CharacterUserEvent = _$CharacterUserEventTearOff();

/// @nodoc
mixin _$CharacterUserEvent {
  int get userId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(int userId),
    @required TResult showAllPosts(int userId),
    @required TResult showAllAlbums(int userId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(int userId),
    TResult showAllPosts(int userId),
    TResult showAllAlbums(int userId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StartedEvent value),
    @required TResult showAllPosts(_ShowAllPost value),
    @required TResult showAllAlbums(_ShowAllAlbums value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
    TResult showAllPosts(_ShowAllPost value),
    TResult showAllAlbums(_ShowAllAlbums value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $CharacterUserEventCopyWith<CharacterUserEvent> get copyWith;
}

/// @nodoc
abstract class $CharacterUserEventCopyWith<$Res> {
  factory $CharacterUserEventCopyWith(
          CharacterUserEvent value, $Res Function(CharacterUserEvent) then) =
      _$CharacterUserEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class _$CharacterUserEventCopyWithImpl<$Res>
    implements $CharacterUserEventCopyWith<$Res> {
  _$CharacterUserEventCopyWithImpl(this._value, this._then);

  final CharacterUserEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterUserEvent) _then;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
abstract class _$StartedEventCopyWith<$Res>
    implements $CharacterUserEventCopyWith<$Res> {
  factory _$StartedEventCopyWith(
          _StartedEvent value, $Res Function(_StartedEvent) then) =
      __$StartedEventCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
}

/// @nodoc
class __$StartedEventCopyWithImpl<$Res>
    extends _$CharacterUserEventCopyWithImpl<$Res>
    implements _$StartedEventCopyWith<$Res> {
  __$StartedEventCopyWithImpl(
      _StartedEvent _value, $Res Function(_StartedEvent) _then)
      : super(_value, (v) => _then(v as _StartedEvent));

  @override
  _StartedEvent get _value => super._value as _StartedEvent;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_StartedEvent(
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent({@required this.userId}) : assert(userId != null);

  @override
  final int userId;

  @override
  String toString() {
    return 'CharacterUserEvent.initial(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartedEvent &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$StartedEventCopyWith<_StartedEvent> get copyWith =>
      __$StartedEventCopyWithImpl<_StartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(int userId),
    @required TResult showAllPosts(int userId),
    @required TResult showAllAlbums(int userId),
  }) {
    assert(initial != null);
    assert(showAllPosts != null);
    assert(showAllAlbums != null);
    return initial(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(int userId),
    TResult showAllPosts(int userId),
    TResult showAllAlbums(int userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StartedEvent value),
    @required TResult showAllPosts(_ShowAllPost value),
    @required TResult showAllAlbums(_ShowAllAlbums value),
  }) {
    assert(initial != null);
    assert(showAllPosts != null);
    assert(showAllAlbums != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
    TResult showAllPosts(_ShowAllPost value),
    TResult showAllAlbums(_ShowAllAlbums value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements CharacterUserEvent {
  const factory _StartedEvent({@required int userId}) = _$_StartedEvent;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$StartedEventCopyWith<_StartedEvent> get copyWith;
}

/// @nodoc
abstract class _$ShowAllPostCopyWith<$Res>
    implements $CharacterUserEventCopyWith<$Res> {
  factory _$ShowAllPostCopyWith(
          _ShowAllPost value, $Res Function(_ShowAllPost) then) =
      __$ShowAllPostCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
}

/// @nodoc
class __$ShowAllPostCopyWithImpl<$Res>
    extends _$CharacterUserEventCopyWithImpl<$Res>
    implements _$ShowAllPostCopyWith<$Res> {
  __$ShowAllPostCopyWithImpl(
      _ShowAllPost _value, $Res Function(_ShowAllPost) _then)
      : super(_value, (v) => _then(v as _ShowAllPost));

  @override
  _ShowAllPost get _value => super._value as _ShowAllPost;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_ShowAllPost(
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
class _$_ShowAllPost implements _ShowAllPost {
  const _$_ShowAllPost({@required this.userId}) : assert(userId != null);

  @override
  final int userId;

  @override
  String toString() {
    return 'CharacterUserEvent.showAllPosts(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowAllPost &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$ShowAllPostCopyWith<_ShowAllPost> get copyWith =>
      __$ShowAllPostCopyWithImpl<_ShowAllPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(int userId),
    @required TResult showAllPosts(int userId),
    @required TResult showAllAlbums(int userId),
  }) {
    assert(initial != null);
    assert(showAllPosts != null);
    assert(showAllAlbums != null);
    return showAllPosts(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(int userId),
    TResult showAllPosts(int userId),
    TResult showAllAlbums(int userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllPosts != null) {
      return showAllPosts(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StartedEvent value),
    @required TResult showAllPosts(_ShowAllPost value),
    @required TResult showAllAlbums(_ShowAllAlbums value),
  }) {
    assert(initial != null);
    assert(showAllPosts != null);
    assert(showAllAlbums != null);
    return showAllPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
    TResult showAllPosts(_ShowAllPost value),
    TResult showAllAlbums(_ShowAllAlbums value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllPosts != null) {
      return showAllPosts(this);
    }
    return orElse();
  }
}

abstract class _ShowAllPost implements CharacterUserEvent {
  const factory _ShowAllPost({@required int userId}) = _$_ShowAllPost;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$ShowAllPostCopyWith<_ShowAllPost> get copyWith;
}

/// @nodoc
abstract class _$ShowAllAlbumsCopyWith<$Res>
    implements $CharacterUserEventCopyWith<$Res> {
  factory _$ShowAllAlbumsCopyWith(
          _ShowAllAlbums value, $Res Function(_ShowAllAlbums) then) =
      __$ShowAllAlbumsCopyWithImpl<$Res>;
  @override
  $Res call({int userId});
}

/// @nodoc
class __$ShowAllAlbumsCopyWithImpl<$Res>
    extends _$CharacterUserEventCopyWithImpl<$Res>
    implements _$ShowAllAlbumsCopyWith<$Res> {
  __$ShowAllAlbumsCopyWithImpl(
      _ShowAllAlbums _value, $Res Function(_ShowAllAlbums) _then)
      : super(_value, (v) => _then(v as _ShowAllAlbums));

  @override
  _ShowAllAlbums get _value => super._value as _ShowAllAlbums;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(_ShowAllAlbums(
      userId: userId == freezed ? _value.userId : userId as int,
    ));
  }
}

/// @nodoc
class _$_ShowAllAlbums implements _ShowAllAlbums {
  const _$_ShowAllAlbums({@required this.userId}) : assert(userId != null);

  @override
  final int userId;

  @override
  String toString() {
    return 'CharacterUserEvent.showAllAlbums(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowAllAlbums &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$ShowAllAlbumsCopyWith<_ShowAllAlbums> get copyWith =>
      __$ShowAllAlbumsCopyWithImpl<_ShowAllAlbums>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(int userId),
    @required TResult showAllPosts(int userId),
    @required TResult showAllAlbums(int userId),
  }) {
    assert(initial != null);
    assert(showAllPosts != null);
    assert(showAllAlbums != null);
    return showAllAlbums(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(int userId),
    TResult showAllPosts(int userId),
    TResult showAllAlbums(int userId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllAlbums != null) {
      return showAllAlbums(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_StartedEvent value),
    @required TResult showAllPosts(_ShowAllPost value),
    @required TResult showAllAlbums(_ShowAllAlbums value),
  }) {
    assert(initial != null);
    assert(showAllPosts != null);
    assert(showAllAlbums != null);
    return showAllAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_StartedEvent value),
    TResult showAllPosts(_ShowAllPost value),
    TResult showAllAlbums(_ShowAllAlbums value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showAllAlbums != null) {
      return showAllAlbums(this);
    }
    return orElse();
  }
}

abstract class _ShowAllAlbums implements CharacterUserEvent {
  const factory _ShowAllAlbums({@required int userId}) = _$_ShowAllAlbums;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$ShowAllAlbumsCopyWith<_ShowAllAlbums> get copyWith;
}

/// @nodoc
class _$CharacterUserStateTearOff {
  const _$CharacterUserStateTearOff();

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
  _DataState data({@required List<Post> posts, @required List<Album> albums}) {
    return _DataState(
      posts: posts,
      albums: albums,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CharacterUserState = _$CharacterUserStateTearOff();

/// @nodoc
mixin _$CharacterUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult error(String errorMessage),
    @required TResult data(List<Post> posts, List<Album> albums),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String errorMessage),
    TResult data(List<Post> posts, List<Album> albums),
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
abstract class $CharacterUserStateCopyWith<$Res> {
  factory $CharacterUserStateCopyWith(
          CharacterUserState value, $Res Function(CharacterUserState) then) =
      _$CharacterUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterUserStateCopyWithImpl<$Res>
    implements $CharacterUserStateCopyWith<$Res> {
  _$CharacterUserStateCopyWithImpl(this._value, this._then);

  final CharacterUserState _value;
  // ignore: unused_field
  final $Res Function(CharacterUserState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$CharacterUserStateCopyWithImpl<$Res>
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
    return 'CharacterUserState.initial()';
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
    @required TResult data(List<Post> posts, List<Album> albums),
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
    TResult data(List<Post> posts, List<Album> albums),
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

abstract class _InitialState implements CharacterUserState {
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
    extends _$CharacterUserStateCopyWithImpl<$Res>
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
    return 'CharacterUserState.loading()';
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
    @required TResult data(List<Post> posts, List<Album> albums),
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
    TResult data(List<Post> posts, List<Album> albums),
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

abstract class _LoadingState implements CharacterUserState {
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
    extends _$CharacterUserStateCopyWithImpl<$Res>
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
    return 'CharacterUserState.error(errorMessage: $errorMessage)';
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
    @required TResult data(List<Post> posts, List<Album> albums),
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
    TResult data(List<Post> posts, List<Album> albums),
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

abstract class _ErrorState implements CharacterUserState {
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
  $Res call({List<Post> posts, List<Album> albums});
}

/// @nodoc
class __$DataStateCopyWithImpl<$Res>
    extends _$CharacterUserStateCopyWithImpl<$Res>
    implements _$DataStateCopyWith<$Res> {
  __$DataStateCopyWithImpl(_DataState _value, $Res Function(_DataState) _then)
      : super(_value, (v) => _then(v as _DataState));

  @override
  _DataState get _value => super._value as _DataState;

  @override
  $Res call({
    Object posts = freezed,
    Object albums = freezed,
  }) {
    return _then(_DataState(
      posts: posts == freezed ? _value.posts : posts as List<Post>,
      albums: albums == freezed ? _value.albums : albums as List<Album>,
    ));
  }
}

/// @nodoc
class _$_DataState implements _DataState {
  const _$_DataState({@required this.posts, @required this.albums})
      : assert(posts != null),
        assert(albums != null);

  @override
  final List<Post> posts;
  @override
  final List<Album> albums;

  @override
  String toString() {
    return 'CharacterUserState.data(posts: $posts, albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataState &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.albums, albums) ||
                const DeepCollectionEquality().equals(other.albums, albums)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(albums);

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
    @required TResult data(List<Post> posts, List<Album> albums),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(data != null);
    return data(posts, albums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult error(String errorMessage),
    TResult data(List<Post> posts, List<Album> albums),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(posts, albums);
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

abstract class _DataState implements CharacterUserState {
  const factory _DataState(
      {@required List<Post> posts,
      @required List<Album> albums}) = _$_DataState;

  List<Post> get posts;
  List<Album> get albums;
  @JsonKey(ignore: true)
  _$DataStateCopyWith<_DataState> get copyWith;
}
