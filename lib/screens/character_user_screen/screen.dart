import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/album_view.dart';
import 'package:test_app/components/error_widget.dart';
import 'package:test_app/components/line_widget.dart';
import 'package:test_app/components/loading_widget.dart';
import 'package:test_app/components/post_view.dart';
import 'package:test_app/components/simple_button.dart';
import 'package:test_app/models/user.dart';
import 'package:test_app/screens/character_user_screen/widgets/address_info.dart';
import 'package:test_app/screens/character_user_screen/widgets/company_info.dart';
import 'package:test_app/screens/character_user_screen/widgets/info_widget.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

import 'bloc/character_user_bloc.dart';

class CharacterUserScreen extends StatelessWidget {
  final User user;
  const CharacterUserScreen({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => CharacterUserBloc()
        ..add(
          CharacterUserEvent.initial(userId: user.id),
        ),
      child: BlocConsumer<CharacterUserBloc, CharacterUserState>(
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
                  user.username,
                  style:
                      TextThemes.headline2.copyWith(color: ColorPalette.black),
                ),
              ),
              body: SafeArea(
                child: Container(
                  child: ListView(
                    shrinkWrap: true,
                    controller: _scrollController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InfoWidget(keyText: 'Name:', valueText: user.name),
                            InfoWidget(
                                keyText: 'Email:', valueText: user.email),
                            InfoWidget(
                                keyText: 'Phone:', valueText: user.phone),
                            InfoWidget(
                                keyText: 'Website:', valueText: user.website),
                            LineWidget(),
                            CompanyInfo(
                              company: user.company,
                            ),
                            LineWidget(),
                            AddressInfo(
                              address: user.address,
                            ),
                            LineWidget(),
                            Text(
                              "Posts:",
                              style: TextThemes.headline2.copyWith(
                                  color: ColorPalette.black, fontSize: 18),
                            ),
                            Container(
                              height: 280,
                              child: PostViewWidget(
                                scrollController: _scrollController,
                                postList: _data.posts,
                                count: 3,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            SimpleButton(
                              name: 'Show More Posts',
                              function: () {
                                Navigator.of(context).pushNamed('/user_posts',
                                    arguments: _data.posts);
                              },
                            ),
                            LineWidget(),
                            Text(
                              "Albums:",
                              style: TextThemes.headline2.copyWith(
                                  color: ColorPalette.black, fontSize: 18),
                            ),
                            Container(
                              height: 250,
                              child: AlbumViewWidget(
                                albumList: _data.albums,
                                scrollController: _scrollController,
                                count: 3,
                              ),
                            ),
                            SimpleButton(
                              name: 'Show More Albums',
                              function: () {
                                Navigator.of(context).pushNamed('/user_albums',
                                    arguments: _data.albums);
                              },
                            ),
                          ],
                        ),
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
