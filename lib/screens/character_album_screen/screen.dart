import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/error_widget.dart';
import 'package:test_app/components/loading_widget.dart';
import 'package:test_app/models/album.dart';
import 'package:test_app/screens/character_album_screen/bloc/character_album_bloc.dart';
import 'package:test_app/screens/character_album_screen/widgets/slider_view.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class CharacterAlbumScreen extends StatelessWidget {
  final Album album;

  const CharacterAlbumScreen({Key key, this.album}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterAlbumBloc()
        ..add(
          CharacterAlbumEvent.started(albumId: album.id),
        ),
      child: BlocConsumer<CharacterAlbumBloc, CharacterAlbumState>(
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
                  "Album Info",
                  style:
                      TextThemes.headline2.copyWith(color: ColorPalette.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        album.title,
                        style: TextThemes.headline2.copyWith(fontSize: 22),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        child: SliderViewWidget(
                          photoList: _data.photoList,
                        ),
                      ),
                      SizedBox(
                        height: 8,
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
