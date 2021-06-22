import 'package:flutter/material.dart';
import 'package:test_app/models/comment.dart';
import 'package:test_app/screens/character_post_screen/widgets/comment_item.dart';

class CommentViewWidget extends StatelessWidget {
  final List<Comment> commentList;
  final ScrollController scrollController;

  const CommentViewWidget({Key key, this.commentList, this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        controller: scrollController != null
            ? scrollController
            : new ScrollController(),
        itemCount: commentList.length,
        itemBuilder: (context, index) {
          return CommentItem(comment: commentList[index],);
        },
      ),
    );
  }
}
