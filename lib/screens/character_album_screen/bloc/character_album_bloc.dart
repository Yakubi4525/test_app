import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/repository.dart';
import 'package:test_app/models/photo.dart';

part 'character_album_event.dart';
part 'character_album_state.dart';
part 'character_album_bloc.freezed.dart';

class CharacterAlbumBloc
    extends Bloc<CharacterAlbumEvent, CharacterAlbumState> {
  CharacterAlbumBloc() : super(_InitialState());
  DataRepository _dataRepository = DataRepository();

  @override
  Stream<CharacterAlbumState> mapEventToState(
    CharacterAlbumEvent event,
  ) async* {
    yield* event.map(started: _mapInitialEvent);
  }

  Stream<CharacterAlbumState> _mapInitialEvent(_Started event) async* {
    yield CharacterAlbumState.loading();
    try {
      var commentList =
          await _dataRepository.getAlbumPhotos(albumId: event.albumId);
      if (commentList != null && commentList.isNotEmpty) {
        print('commentlist $commentList');
        yield CharacterAlbumState.data(photoList: commentList);
      }
    } catch (errorMessage) {
      print('error is $errorMessage');
      yield CharacterAlbumState.error(errorMessage: errorMessage.toString());
    }
  }
}
