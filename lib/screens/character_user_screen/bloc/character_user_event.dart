part of 'character_user_bloc.dart';

@freezed
abstract class CharacterUserEvent with _$CharacterUserEvent {
  const factory CharacterUserEvent.initial({@required int userId}) = _StartedEvent;
  const factory CharacterUserEvent.showAllPosts({@required int userId}) = _ShowAllPost;
  const factory CharacterUserEvent.showAllAlbums({@required int userId}) = _ShowAllAlbums;
}
