import 'package:flutter/material.dart';
import 'package:test_app/components/album_item.dart';
import 'package:test_app/models/album.dart';

class AlbumViewWidget extends StatelessWidget {
  final List<Album> albumList;
  final ScrollController scrollController;
  final int count;

  const AlbumViewWidget({Key key, this.albumList, this.scrollController, this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          controller: scrollController!=null? scrollController: new ScrollController(),
          itemCount: count != null ? count : albumList.length,
          itemBuilder: (context, index) {
            return ALbumItem(
              album: albumList[index],
            );
          }),
    );
  }
}
