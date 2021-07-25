import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/widgets/custom_circle_button.dart';
import '../widgets/header_text_filed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: _homeHeader(),
      ),
    );
  }

  Widget _homeHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(30),
          getProportionateScreenHeight(8),
          getProportionateScreenWidth(30),
          0,
        ),
        child: Row(
          children: [
            Expanded(
              child: HeaderTextField(),
            ),
            SizedBox(width: getProportionateScreenWidth(16)),
            CustomCircleButton(
              icon: Icon(FontAwesomeIcons.shoppingBag),
              buttonSize: 20,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
