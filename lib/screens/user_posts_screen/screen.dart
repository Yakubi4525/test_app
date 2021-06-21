import 'package:flutter/material.dart';
import 'package:test_app/components/post_view.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class UserPostScreen extends StatelessWidget {
  final List<Post> userPosts;

  const UserPostScreen({Key key, this.userPosts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPalette.white,
        title: Text(
          'All posts',
          style: TextThemes.headline2.copyWith(color: ColorPalette.black),
        ),
      ),
      body: Container(
        height: _size.height,
        child: PostViewWidget(
          postList: userPosts,
        ),
      ),
    );
  }
}
