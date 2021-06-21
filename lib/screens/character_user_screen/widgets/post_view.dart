import 'package:flutter/material.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/screens/character_user_screen/widgets/post_item.dart';

class PostViewWidget extends StatelessWidget {
  final ScrollController scrollController;
  final List<Post> postList;

  const PostViewWidget({Key key, this.postList, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      child: ListView.builder(
        controller: scrollController,
          itemCount: 3,
          itemBuilder: (context, index) {
            return PostItem(
              post: postList[index],
            );
          }),
    );
  }
}
