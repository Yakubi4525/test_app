import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/data/local/local_service.dart';
import 'package:test_app/screens/users_screen/bloc/user_screen_bloc.dart';
import 'package:test_app/screens/users_screen/screen.dart';
import 'package:test_app/theme/main_theme.dart';

void main() async {
  
 // await LocalService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: MultiBlocProvider(providers: [
          BlocProvider(
            create: (context) => UserScreenBloc()
              ..add(
                UserScreenEvent.initial(),
              ),
          ),
        ], child: UsersScreen(),),);
   
  }
}
