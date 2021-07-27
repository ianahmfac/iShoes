import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../auth/widgets/title_section.dart';

import '../widgets/category_item.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cashbackBanner(),
        TitleSection(title: 'Categories'),
        _categories(),
        TitleSection(title: 'Popular Product'),
        TitleSection(title: 'New Coming'),
      ],
    );
  }

  Widget _categories() {
    return Container(
      height: getProportionateScreenHeight(50),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultMargin),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(
            name: 'All Shoes',
            onPressed: () {},
          );
        },
      ),
    );
  }

  Widget _cashbackBanner() {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      height: SizeConfig.screenHeight * 0.15,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultMargin),
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
