part of 'user_screen_bloc.dart';

@freezed
abstract class UserScreenEvent with _$UserScreenEvent {
  const factory UserScreenEvent.initial() = _StartedEvent;
  const factory UserScreenEvent.getDetailUser(int userid) = _GetDetailUserEvent;
}
