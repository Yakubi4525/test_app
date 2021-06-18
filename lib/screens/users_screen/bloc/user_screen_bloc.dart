import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_screen_event.dart';
part 'user_screen_state.dart';
part 'user_screen_bloc.freezed.dart';

class UserScreenBloc extends Bloc<UserScreenEvent, UserScreenState> {
  UserScreenBloc() : super(_InitialState());

  @override
  Stream<UserScreenState> mapEventToState(
    UserScreenEvent event,
  ) async* {
    yield* event.map(
        started: _mapInitialEvent, getDetailUser: _mapGetDetailUservent);
  }

  Stream<UserScreenState> _mapInitialEvent(_StartedEvent event) async* {
    yield UserScreenState.loading();
    try {
      
    } catch (errorMessage) {}
  }

  Stream<UserScreenState> _mapGetDetailUservent(
      _GetDetailUserEvent event) async* {
    yield UserScreenState.loading();
  }
}
