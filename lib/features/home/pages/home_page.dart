import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_circle_button.dart';
import '../models/cashback.dart';
import '../widgets/cashback_item.dart';
import '../widgets/header_text_filed.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: _homeHeader(),
      ),
      body: SingleChildScrollView(child: _contentBody()),
    );
  }

  Widget _contentBody() {
    return Column(
      children: [
        _cashbackBanner(),
      ],
    );
  }

  Widget _cashbackBanner() {
    return SizedBox(
      height: SizeConfig.screenHeight * 0.2,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultMargin),
          vertical: getProportionateScreenHeight(20),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: dummyCashback.length,
        itemBuilder: (BuildContext context, int index) {
          return CashbackItem(cashback: dummyCashback[index]);
        },
      ),
    );
  }

  Widget _homeHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(30),
          10,
          getProportionateScreenWidth(30),
          0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: HeaderTextField(),
            ),
            SizedBox(width: getProportionateScreenWidth(8)),
            CustomCircleButton(
              icon: Icon(FontAwesomeIcons.shoppingBag),
              onPressed: () {},
              qty: 10,
            )
          ],
        ),
      ),
    );
  }
}
