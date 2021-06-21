import 'package:flutter/material.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).pushNamed('/character_user', arguments: user);
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: ColorPalette.lightGreyColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  Text(
                    post.body,
                    style: TextThemes.headline2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    post.body,
                    style: TextThemes.headline3
                        .copyWith(color: ColorPalette.darkGreyColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
