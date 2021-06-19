import 'package:flutter/material.dart';
import 'package:test_app/models/user.dart';
import 'package:test_app/recources/variables.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class UserListItem extends StatelessWidget {
  final User user;

  const UserListItem({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => NotificationDetail()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: ColorPalette.lightGreyColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Variables.username,
                        style: TextThemes.headline3,
                      ),
                      Text(
                        user.username,
                        style: TextThemes.headline2,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Variables.name,
                        style: TextThemes.headline3,
                      ),
                      Text(
                        user.name,
                        style: TextThemes.headline2,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
