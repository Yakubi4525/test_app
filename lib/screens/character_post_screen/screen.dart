import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/error_widget.dart';
import 'package:test_app/components/loading_widget.dart';
import 'package:test_app/components/simple_button.dart';
import 'package:test_app/models/post.dart';
import 'package:test_app/screens/character_post_screen/bloc/character_post_bloc.dart';
import 'package:test_app/screens/character_post_screen/widgets/comment_view.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class CharacterPostScreen extends StatelessWidget {
  final Post post;
  const CharacterPostScreen({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    ScrollController _scrollController;
    return BlocProvider(
      create: (context) => CharacterPostBloc()
        ..add(
          CharacterPostEvent.started(postId: post.id),
        ),
      child: BlocConsumer<CharacterPostBloc, CharacterPostState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                child: SingleChildScrollView(
                                  child: AlertDialog(
                                    title: Center(child: Text('Add Comment')),
                                    titleTextStyle: TextThemes.headline2
                                        .copyWith(color: ColorPalette.black),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    content: SingleChildScrollView(
                                      child: Container(
                                        height: _size.height * 0.45,
                                        width: _size.width * 0.9,
                                        child: Column(
                                          

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                          // Navigator.of(context).pushNamed('/user_posts',
                          //     arguments: _data.posts);
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
}
