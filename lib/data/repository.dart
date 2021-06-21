import 'package:flutter/foundation.dart';
import 'package:test_app/data/local/local_service.dart';
import 'package:test_app/data/network/service_api.dart';
import 'package:test_app/models/album.dart';
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
      LocalService localService = LocalService();
      var userList = await localService.getAllusers();
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
    LocalService localService = LocalService();
    var userPostsList = await localService.getUserPosts(userId: userId);
    if (userPostsList.isEmpty) {
      var postList = await _serverApi.getAllPosts();
      print('from server');

      for (Post post in postList) {
        if (post.userId == userId) {
          userPostsList.add(post);
        }
      }
      await _localService.setUserPosts(postList: userPostsList, userId: userId);
    }
    return userPostsList;
    } catch (error) {
      print(error.toString());
      rethrow;
    }
  }

  Future<List<Album>> getUserAlbums({@required int userId}) async {
    try {
    LocalService localService = LocalService();
    var userAlbumList = await localService.getUserAlbums(userId: userId);
    if (userAlbumList.isEmpty) {
      var albumList = await _serverApi.getAllAlbums();
      print('from server');

      for (Album album in albumList) {
        if (album.userId == userId) {
          userAlbumList.add(album);
        }
      }
      await _localService.setUserAlbums(
          albumList: userAlbumList, userId: userId);
    }
    return userAlbumList;
    } catch (error) {
      print(error.toString());
     rethrow;
    }
  }
}
