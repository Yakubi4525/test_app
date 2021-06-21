import 'package:flutter/material.dart';
import 'package:test_app/components/post_item.dart';
import 'package:test_app/models/post.dart';

class PostViewWidget extends StatelessWidget {
  final ScrollController scrollController;
  final List<Post> postList;
  final int count;

  const PostViewWidget({Key key, this.postList, this.scrollController, this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          controller: scrollController!=null? scrollController: new ScrollController(),
          itemCount: count!=null? count: postList.length,
          itemBuilder: (context, index) {
            return PostItem(
              post: postList[index],
            );
          }),
    );
  }
}
