import 'package:flutter/material.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/models/user.dart';
import 'package:test_app/screens/character_album_screen/screen.dart';
import 'package:test_app/screens/character_post_screen/screen.dart';
import 'package:test_app/screens/character_user_screen/screen.dart';
import 'package:test_app/screens/user_albums_screen/screen.dart';
import 'package:test_app/screens/user_posts_screen/screen.dart';
import 'package:test_app/screens/users_screen/screen.dart';
import 'package:test_app/theme/color_theme.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => UsersScreen());
      case '/character_user':
        if (args is User) {
          return MaterialPageRoute(
            builder: (_) => CharacterUserScreen(
              user: args,
            ),
          );
        }
        return _errorRoute();
      case '/user_posts':
        if (args is List<Post>) {
          return MaterialPageRoute(
            builder: (_) => UserPostScreen(
              userPosts: args,
            ),
          );
        }
        return _errorRoute();
      case '/user_albums':
        if (args is List<Album>) {
          return MaterialPageRoute(
            builder: (_) => UserAlbumsScreen(
              userAlbums: args,
            ),
          );
        }
        return _errorRoute();
      case '/character_album':
        if (args is Album) {
          return MaterialPageRoute(
            builder: (_) => CharacterAlbumScreen(
              album: args,
            ),
          );
        }
        return _errorRoute();
      case '/character_post':
        if (args is Post) {
          return MaterialPageRoute(
            builder: (_) => CharacterPostScreen(
              post: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error Page'),
          backgroundColor: ColorPalette.white,
          centerTitle: true,
        ),
        body: Center(
          child: Text('Page not found'),
        ),
      );
    });
  }
}
