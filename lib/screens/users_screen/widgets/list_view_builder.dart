import 'package:flutter/material.dart';
import 'package:test_app/models/user.dart';
import 'package:test_app/screens/users_screen/widgets/list_item.dart';

class ListViewBuilder extends StatelessWidget {
  final List<User> userList;

  const ListViewBuilder({Key key, this.userList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10),
      itemCount: userList.length,
      itemBuilder: (context, index) {
        return UserListItem(
          user: userList[index],
        );
      },
    );
  }
}
