part of 'user_screen_bloc.dart';

@freezed
abstract class UserScreenState with _$UserScreenState {
  const factory UserScreenState.initial() = _InitialState;
  const factory UserScreenState.loading() = _LoadingState;
  const factory UserScreenState.error({@required String errorMessage}) = _ErrorState;
  const factory UserScreenState.data({@required List<User> userList}) = _DataState;
}
