part of 'character_user_bloc.dart';

@freezed
abstract class CharacterUserState with _$CharacterUserState {
  const factory CharacterUserState.initial() = _InitialState;
  const factory CharacterUserState.loading() = _LoadingState;
  const factory CharacterUserState.error({@required String errorMessage}) =
      _ErrorState;
  const factory CharacterUserState.data(
      {
      @required List<Post> posts,
      @required List<Album> albums}) = _DataState;
}
