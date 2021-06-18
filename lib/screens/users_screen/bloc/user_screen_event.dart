part of 'user_screen_bloc.dart';

@freezed
abstract class UserScreenEvent with _$UserScreenEvent {
  const factory UserScreenEvent.started() = _StartedEvent;
  const factory UserScreenEvent.getDetailUser() = _GetDetailUserEvent;
}
