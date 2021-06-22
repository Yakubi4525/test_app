import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/error_widget.dart';
import 'package:test_app/components/input_widget.dart';
import 'package:test_app/components/loading_widget.dart';
import 'package:test_app/components/simple_button.dart';
import 'package:test_app/components/text_label.dart';
import 'package:test_app/models/comment.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/screens/character_post_screen/bloc/character_post_bloc.dart';
import 'package:test_app/screens/character_post_screen/widgets/comment_view.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

// ignore: must_be_immutable
class CharacterPostScreen extends StatelessWidget {
  final Post post;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  static final keys1 = GlobalKey<FormState>(debugLabel: '_nameDebug');
  static final keys2 = GlobalKey<FormState>(debugLabel: '_emailDebug');
  static final keys3 = GlobalKey<FormState>(debugLabel: '_messageDebug');
  Comment comment;

  Future addNewComment() {
    return null;
  }

  CharacterPostScreen({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext pageContext) {
    ScrollController _scrollController;
    return BlocProvider(
      create: (_) => CharacterPostBloc()
        ..add(
          CharacterPostEvent.started(postId: post.id),
        ),
      child: BlocBuilder<CharacterPostBloc, CharacterPostState>(
        builder: (blocPostContext, state) {
          return state.maybeMap(
            initial: (_) => CustomLoaderWidget(),
            loading: (_) => CustomLoaderWidget(),
            error: (_error) => CustomErrorWidget(error: _error.errorMessage),
            data: (_data) => Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: ColorPalette.white,
                title: Text(
                  'Post Info',
                  style:
                      TextThemes.headline2.copyWith(color: ColorPalette.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.title,
                        style: TextThemes.headline2.copyWith(fontSize: 22),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        post.body,
                        style: TextThemes.headline3,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Comments:",
                        style: TextThemes.headline2.copyWith(fontSize: 22),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        child: CommentViewWidget(
                          commentList: _data.commentList,
                          scrollController: _scrollController,
                        ),
                      ),
                      SimpleButton(
                        name: 'Add Comment',
                        function: () {
                          showCommentDialog(
                              blocPostContext: blocPostContext,
                              commentsCount: _data.commentList.length);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            orElse: () => Container(),
          );
        },
      ),
    );
  }

  Future showCommentDialog(
      {BuildContext blocPostContext, int commentsCount}) async {
    return await showDialog(
      context: blocPostContext,
      builder: (dialogContext) {
        Size _size = MediaQuery.of(dialogContext).size;
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              title: Center(child: Text('Add Comment')),
              titleTextStyle:
                  TextThemes.headline2.copyWith(color: ColorPalette.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              content: SingleChildScrollView(
                child: Container(
                  height: _size.height * 0.61,
                  width: _size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextWidget(
                            textValue: "Input your name",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InputWidget(
                            keyValue: keys1,
                            controller: _nameController,
                            hintText: 'name',
                            validationFunction: (str) {
                              if (str.length == 0) {
                                return "Name must be > 0";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomTextWidget(
                            textValue: "Input your email",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InputWidget(
                            keyValue: keys2,
                            validationFunction: (str) {
                              if (str.length == 0) {
                                return "email must be > 0 and contains '@'";
                              }
                              if (!str.contains('@')) {
                                return "email must contains '@'";
                              }
                              return null;
                            },
                            controller: _emailController,
                            hintText: 'e-mail',
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomTextWidget(
                            textValue: "Input your message",
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          InputWidget(
                            keyValue: keys3,
                            validationFunction: (str) {
                              if (str.length == 0) {
                                return "Message must be > 0";
                              }
                              return null;
                            },
                            controller: _messageController,
                            hintText: 'message',
                          ),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                      SimpleButton(
                        name: 'Add Comment',
                        function: () {
                          addComment(
                              context: blocPostContext,
                              commentsCount: commentsCount);
                          Navigator.pop(dialogContext);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void addComment(
      {@required int commentsCount, @required BuildContext context}) {
    print('name ${_nameController.text}');
    bool _first = keys1.currentState.validate();
    bool _second = keys2.currentState.validate();
    bool _third = keys3.currentState.validate();
    if (!_first || !_second || !_third) {
      return;
    }
    comment = Comment(
      postId: post.id,
      name: _nameController.text,
      email: _emailController.text,
      body: _messageController.text,
      id: commentsCount + 1,
    );
    context.read<CharacterPostBloc>()
      ..add(CharacterPostEvent.addComment(comment: comment));
  }
}
