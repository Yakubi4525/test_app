import 'package:flutter/foundation.dart';
import 'package:test_app/data/local/local_service.dart';
import 'package:test_app/data/network/service_api.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/models/comment.dart';
import 'package:test_app/models/photo.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/models/user.dart';

class DataRepository {
  ServerApi _serverApi;
  LocalService _localService;

  static DataRepository _instance = new DataRepository.internal();
  factory DataRepository() => _instance;
  DataRepository.internal() {
    _serverApi = ServerApi();
    _localService = LocalService();
  }

  Future<List<User>> getAllUser() async {
    try {
      var userList = await _localService.getAllusers();
      if (userList.isEmpty) {
        userList = await _serverApi.getAllUsers();
        await _localService.setAllusers(userList);
      }
      return userList;
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  Future<List<Post>> getUserPosts({@required int userId}) async {
    try {
      var userPostsList = await _localService.getUserPosts(userId: userId);
      if (userPostsList.isEmpty) {
        print('im here');
        userPostsList = await _serverApi.getAllPosts(userId: userId);
        print('userposts: $userPostsList');
        await _localService.setUserPosts(
            postList: userPostsList, userId: userId);
      }
      return userPostsList;
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  Future<List<Album>> getUserAlbums({@required int userId}) async {
    try {
      var userAlbumList = await _localService.getUserAlbums(userId: userId);
      if (userAlbumList.isEmpty) {
        userAlbumList = await _serverApi.getAllAlbums(userId: userId);
        await _localService.setUserAlbums(
            albumList: userAlbumList, userId: userId);
      }
      return userAlbumList;
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  Future<List<Comment>> getPostComments({@required int postId}) async {
    try {
      var commentList = await _localService.getPostComments(postId: postId);
      if (commentList.isEmpty) {
        commentList = await _serverApi.getPostComments(postId: postId);
        await _localService.setPostComments(
            commentList: commentList, postId: postId);
      }
      return commentList;
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  Future<bool> setOneComment({@required Comment comment}) async {
    try {
      await _localService.setLocalComment(comment: comment);
      var apiComment = await _serverApi.addComments(comment: comment);
      if (apiComment == true) {
        return true;
      }
      return false;
    } catch (error) {
      print(
        error.toString(),
      );
      return false;
    }
  }

  Future<List<Photos>> getAlbumPhotos({@required int albumId}) async {
    try {
      var photoList = await _localService.getAlbumPhotos(albumId: albumId);
      if (photoList.isEmpty) {
        photoList = await _serverApi.getAlbumPhotos(albumId: albumId);
        await _localService.setAlbumPhotos(
            photoLiist: photoList, albumId: albumId);
      }
      return photoList;
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }
}
