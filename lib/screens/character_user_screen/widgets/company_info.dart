import 'package:flutter/material.dart';
import 'package:test_app/models/user.dart';
import 'package:test_app/screens/character_user_screen/widgets/info_widget.dart';
import 'package:test_app/theme/color_theme.dart';
import 'package:test_app/theme/text_theme.dart';

class CompanyInfo extends StatelessWidget {
  final Company company;

  const CompanyInfo({Key key, this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Working company:",
            style: TextThemes.headline2
                .copyWith(color: ColorPalette.black, fontSize: 18)),
        InfoWidget(keyText: 'name:', valueText: company.name),
        InfoWidget(keyText: 'bs:', valueText: company.bs),
        InfoWidget(keyText: 'catchPhrase: ', valueText: company.catchPhrase),
      ],
    );
  }
}
