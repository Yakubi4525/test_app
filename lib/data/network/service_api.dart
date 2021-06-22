import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:test_app/data/network/dio_setting.dart';
import 'package:test_app/data/network/service_request.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/models/comment.dart';
import 'package:test_app/models/photo.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/models/user.dart';

class ServerApi {
  DioSettings _dioSettings = DioSettings();
  Dio _dio = Dio();
  static ServerApi _instance = new ServerApi.internal();
  factory ServerApi() => _instance;
  ServerApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  Future<List<User>> getAllUsers() async {
    _dio.interceptors.add(LogInterceptor());
    try {
      Response response = await _dio.get('/users');
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((user) => User.fromJson(user))
            .toList();
      }
    } catch (error) {}
    return [];
  }

  Future<List<Post>> getAllPosts({@required int userId}) async {
    _dio.interceptors.add(LogInterceptor());
    try {
      Response response = await _dio.get('/posts?userId=$userId');
      if (response.statusCode == 200 && response.data != null) {
        return (response.data as List)
            .map((post) => Post.fromJson(post))
            .toList();
      }
    } catch (error) {
      print(error.toString());
    }
    return [];
  }

  Future<List<Album>> getAllAlbums({@required int userId}) async {
    _dio.interceptors.add(LogInterceptor());
    try {
      Response response = await _dio.get('/albums?userId=$userId');
      if (response.statusCode == 200 && response.data != null) {
        return (response.data as List)
            .map((album) => Album.fromJson(album))
            .toList();
      }
    } catch (error) {
      print(error.toString());
    }
    return [];
  }

  Future<List<Comment>> getPostComments({@required int postId}) async {
    _dio.interceptors.add(LogInterceptor());
    try {
      Response response = await _dio.get('/comments?postId=$postId');
      if (response.statusCode == 200 && response.data != null) {
        return (response.data as List)
            .map((album) => Comment.fromJson(album))
            .toList();
      }
    } catch (error) {
      print(error.toString());
    }
    return [];
  }

  Future<List<Photos>> getAlbumPhotos({@required int albumId}) async {
    _dio.interceptors.add(LogInterceptor());
    try {
      Response response = await _dio.get('/photos?albumId=$albumId');
      if (response.statusCode == 200 && response.data != null) {
        return (response.data as List)
            .map((album) => Photos.fromJson(album))
            .toList();
      }
    } catch (error) {
      print(error.toString());
    }
    return [];
  }

  Future<bool> addComments({@required Comment comment}) async {
    _dio.interceptors.add(LogInterceptor());
    try {
      Response response = await _dio.post('/comments?postId=${comment.postId}',
          data: ServiceRequest.getBody(comment));
      if (response.statusCode == 201 && response.data != null) {
        print('Comment saved succesfully');
        print('your comment; ${response.data}');
        return true;
      }
    } catch (error) {
      print(
        error.toString(),
      );
      return false;
    }
    return false;
  }
}
