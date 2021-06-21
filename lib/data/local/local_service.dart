import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/models/post.dart';
import 'dart:convert';

import 'package:test_app/models/user.dart';

class LocalService {
  static SharedPreferences _preferences;

  static const _keyAllUsers = 'users';
  static const _keyUsersPost = 'userPost';
  static const _keyUsersAlbum = 'userAlbum';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  Future setAllusers(List<User> userList) async {
    var list = userList.map((user) => jsonEncode(user)).toList();
    await _preferences.setStringList(_keyAllUsers, list);
  }

  Future setUserPosts(
      {@required List<Post> postList, @required int userId}) async {
    var list = postList.map((post) => jsonEncode(post)).toList();
    await _preferences.setStringList(_keyUsersPost + userId.toString(), list);
    print('post saved succes');
  }

  Future setUserAlbums(
      {@required List<Album> albumList, @required int userId}) async {
    var list = albumList.map((album) => jsonEncode(album)).toList();
    await _preferences.setStringList(_keyUsersAlbum + userId.toString(), list);
  }

  Future<List<User>> getAllusers() async {
    _preferences = await SharedPreferences.getInstance();
    var stringList = await _preferences.getStringList(_keyAllUsers);
    if (stringList == null) {
      return [];
    }
    var list = stringList.map((user) => jsonDecode(user)).toList();

    List<User> userList = list.map((e) => User.fromJson(e)).toList();
    return userList;
  }

  Future<List<Post>> getUserPosts({@required int userId}) async {
    _preferences = await SharedPreferences.getInstance();
    var stringList =
        await _preferences.getStringList(_keyUsersPost + userId.toString());
    if (stringList != null) {
      var list = stringList.map((post) => jsonDecode(post)).toList();
      List<Post> postList = list.map((post) => Post.fromJson(post)).toList();
      return postList;
    } else
      return [];
  }

  Future<List<Album>> getUserAlbums({@required int userId}) async {
    _preferences = await SharedPreferences.getInstance();
    var stringList =
        await _preferences.getStringList(_keyUsersAlbum + userId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((user) => jsonDecode(user)).toList();
      List<Album> albumList =
          list.map((album) => Album.fromJson(album)).toList();
      return albumList;
    }
  }
}
