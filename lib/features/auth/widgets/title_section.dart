import 'package:flutter/material.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
    this.fontSize,
  }) : super(key: key);
  final String title;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        getProportionateScreenWidth(kDefaultMargin),
        getProportionateScreenHeight(kDefaultMargin),
        getProportionateScreenWidth(kDefaultMargin),
        getProportionateScreenHeight(10),
      ),
      child: Text(
        title,
        style: kPrimaryTextStyle.copyWith(
          fontSize: getProportionateScreenWidth(fontSize ?? 20),
        ),
      ),
    );
  }
}
