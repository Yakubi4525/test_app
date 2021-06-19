import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/repository.dart';
import 'package:test_app/models/user.dart';

part 'user_screen_event.dart';
part 'user_screen_state.dart';
part 'user_screen_bloc.freezed.dart';

class UserScreenBloc extends Bloc<UserScreenEvent, UserScreenState> {
  UserScreenBloc() : super(_InitialState());
  DataRepository _dataRepository=DataRepository();
  @override
  Stream<UserScreenState> mapEventToState(
    UserScreenEvent event,
  ) async* {
    yield* event.map(
        initial: _mapInitialEvent, getDetailUser: _mapGetDetailUservent);
  }

  Stream<UserScreenState> _mapInitialEvent(_StartedEvent event) async* {
    yield UserScreenState.loading();
    try {
      var list = await _dataRepository.getAllUser();
      yield UserScreenState.data(userList: list);
    } catch (errorMessage) {
      print('error is $errorMessage');
    }
  }

  Stream<UserScreenState> _mapGetDetailUservent(
      _GetDetailUserEvent event) async* {
    yield UserScreenState.loading();
  }
}
