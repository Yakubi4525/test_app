import 'package:flutter/material.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/screens/character_user_screen/widgets/album_item.dart';

class AlbumViewWidget extends StatelessWidget {
  final List<Album> albumList;
  final ScrollController controller;

  const AlbumViewWidget({Key key, this.albumList, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        controller: controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return ALbumItem(
              album: albumList[index],
            );
          }),
    );
  }
}
