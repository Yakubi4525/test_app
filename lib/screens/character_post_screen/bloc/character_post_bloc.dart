import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/repository.dart';
import 'package:test_app/models/comment.dart';

part 'character_post_event.dart';
part 'character_post_state.dart';
part 'character_post_bloc.freezed.dart';

class CharacterPostBloc extends Bloc<CharacterPostEvent, CharacterPostState> {
  CharacterPostBloc() : super(_InitialState());
  DataRepository _dataRepository = DataRepository();

  @override
  Stream<CharacterPostState> mapEventToState(
    CharacterPostEvent event,
  ) async* {
    yield* event.map(started: _mapInitialEvent);
  }

  Stream<CharacterPostState> _mapInitialEvent(_Started event) async* {
    yield CharacterPostState.loading();
    try {
      var commentList =
          await _dataRepository.getPostComments(postId: event.postId);
      if (commentList != null && commentList.isNotEmpty) {
        yield CharacterPostState.data(commentList: commentList);
      }
    } catch (errorMessage) {
      print('error is $errorMessage');
      yield CharacterPostState.error(errorMessage: errorMessage.toString());
    }
  }
}
