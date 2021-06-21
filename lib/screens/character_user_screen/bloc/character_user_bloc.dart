import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/repository.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/models/user.dart';

part 'character_user_event.dart';
part 'character_user_state.dart';
part 'character_user_bloc.freezed.dart';

class CharacterUserBloc extends Bloc<CharacterUserEvent, CharacterUserState> {
  CharacterUserBloc() : super(_InitialState());
  DataRepository _dataRepository = DataRepository();

  @override
  Stream<CharacterUserState> mapEventToState(
    CharacterUserEvent event,
  ) async* {
    yield* event.map(
        initial: _mapInitialEvent,
        showAllPosts: _mapShowAllPostsEvent,
        showAllAlbums: _mapShowAllAlbumsEvent);
  }

  Stream<CharacterUserState> _mapInitialEvent(_StartedEvent event) async* {
    yield CharacterUserState.loading();
    try {
      var postList = await _dataRepository.getUserPosts(userId: event.userId);
      var albumList = await _dataRepository.getUserAlbums(userId: event.userId);
      yield CharacterUserState.data(posts: postList, albums: albumList);
      if (postList != null && albumList != null) {
        yield CharacterUserState.data(posts: postList, albums: albumList);
      }
    } catch (errorMessage) {
      print('error is $errorMessage');
      yield CharacterUserState.error(errorMessage: errorMessage.toString());
    }
  }

  Stream<CharacterUserState> _mapShowAllPostsEvent(_ShowAllPost event) async* {
    yield CharacterUserState.loading();
  }

  Stream<CharacterUserState> _mapShowAllAlbumsEvent(
      _ShowAllAlbums event) async* {
    yield CharacterUserState.loading();
  }
}
