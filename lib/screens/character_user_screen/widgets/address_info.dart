import 'package:flutter/material.dart';
import 'package:test_app/models/user.dart';
import 'package:test_app/screens/character_user_screen/widgets/info_widget.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class AddressInfo extends StatelessWidget {
  final Address address;

  const AddressInfo({Key key, this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Working address:",
            style: TextThemes.headline2
                .copyWith(color: ColorPalette.black, fontSize: 18)),
        InfoWidget(keyText: 'city:', valueText: address.city),
        InfoWidget(keyText: 'street:', valueText: address.street),
        InfoWidget(keyText: 'zipCode:: ', valueText: address.zipcode),
      ],
    );
  }
}
