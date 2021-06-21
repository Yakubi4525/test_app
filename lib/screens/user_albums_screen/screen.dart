import 'package:flutter/material.dart';
import 'package:test_app/components/album_view.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class UserAlbumsScreen extends StatelessWidget {
  final List<Album> userAlbums;

  const UserAlbumsScreen({Key key, this.userAlbums}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorPalette.white,
        title: Text(
          'All albums',
          style: TextThemes.headline2.copyWith(color: ColorPalette.black),
        ),
      ),
      body: Container(
        height: _size.height,
        child: AlbumViewWidget(
          albumList: userAlbums,
        ),
      ),
    );
  }
}
