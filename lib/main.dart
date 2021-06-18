import 'package:flutter/material.dart';
import 'package:test_app/screens/users_screen/screen.dart';
import 'package:test_app/theme/main_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: UsersScreen(),
    );
  }
}

