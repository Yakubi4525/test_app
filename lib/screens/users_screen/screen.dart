import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/components/error_widget.dart';
import 'package:test_app/components/loading_widget.dart';
import 'package:test_app/recources/variables.dart';
import 'package:test_app/screens/users_screen/bloc/user_screen_bloc.dart';
import 'package:test_app/screens/users_screen/widgets/list_view_builder.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class UsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserScreenBloc, UserScreenState>(
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
                Variables.allUsers,
                style: TextThemes.headline2.copyWith(color: ColorPalette.black),
              ),
            ),
            body: Container(
              child: ListViewBuilder(
                userList: _data.userList,
              ),
            ),
          ),
          orElse: () => Container(),
        );
      },
    );
  }
}
