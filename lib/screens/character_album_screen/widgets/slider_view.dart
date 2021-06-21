import 'package:flutter/material.dart';
import 'package:test_app/models/photo.dart';
import 'package:test_app/screens/character_album_screen/widgets/slider_item.dart';

class SliderViewWidget extends StatelessWidget {
  final List<Photos> photoList;

  const SliderViewWidget({Key key, this.photoList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemCount: photoList.length,
        itemBuilder: (context, index) {
          return SliderItem(
            photo: photoList[index],
          );
        },
      ),
    );
  }
}
