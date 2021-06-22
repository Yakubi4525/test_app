import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/models/comment.dart';
import 'package:test_app/models/photo.dart';
import 'package:test_app/models/post.dart';
import 'dart:convert';

import 'package:test_app/models/user.dart';

class LocalService {
  static SharedPreferences _preferences;

  static const _keyAllUsers = 'users';
  static const _keyUsersPost = 'userPost';
  static const _keyUsersAlbum = 'userAlbum';
  static const _keyPostComment = 'postComment';
  static const _keyAlbumPhoto = 'albumPhoto';

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

  Future setPostComments(
      {@required List<Comment> commentList, @required int postId}) async {
    var list = commentList.map((comment) => jsonEncode(comment)).toList();
    await _preferences.setStringList(_keyPostComment + postId.toString(), list);

  }

  Future setLocalComment({@required Comment comment}) async {
    var list = await getPostComments(postId: comment.postId);
    list.add(comment);
     var listString = list.map((comment) => jsonEncode(comment)).toList();
    await _preferences.setStringList(_keyPostComment + comment.postId.toString(), listString);
  }

  Future setAlbumPhotos(
      {@required List<Photos> photoLiist, @required int albumId}) async {
    var list = photoLiist.map((photo) => jsonEncode(photo)).toList();
    await _preferences.setStringList(_keyAlbumPhoto + albumId.toString(), list);
  }

  Future<List<User>> getAllusers() async {
    _preferences = await SharedPreferences.getInstance();
    var stringList =  _preferences.getStringList(_keyAllUsers);
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
         _preferences.getStringList(_keyUsersPost + userId.toString());
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
         _preferences.getStringList(_keyUsersAlbum + userId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((user) => jsonDecode(user)).toList();
      List<Album> albumList =
          list.map((album) => Album.fromJson(album)).toList();
      return albumList;
    }
  }

  Future<List<Comment>> getPostComments({@required int postId}) async {
    _preferences = await SharedPreferences.getInstance();
    var stringList =
         _preferences.getStringList(_keyPostComment + postId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((comment) => jsonDecode(comment)).toList();
      List<Comment> albumList =
          list.map((comment) => Comment.fromJson(comment)).toList();
      return albumList;
    }
  }

  Future<List<Photos>> getAlbumPhotos({@required int albumId}) async {
    _preferences = await SharedPreferences.getInstance();
    var stringList =
         _preferences.getStringList(_keyUsersAlbum + albumId.toString());
    if (stringList == null) {
      return [];
    } else {
      var list = stringList.map((photo) => jsonDecode(photo)).toList();
      List<Photos> albumList =
          list.map((photo) => Photos.fromJson(photo)).toList();
      return albumList;
    }
  }
}
