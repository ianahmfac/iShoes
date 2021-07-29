import 'package:flutter/material.dart';

import '../../config/themes/size_config.dart';
import '../constants/theme_constant.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
    this.fontSize,
    this.hasButtonSeeMore,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final double? fontSize;
  final bool? hasButtonSeeMore;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        getProportionateScreenWidth(kDefaultMargin),
        getProportionateScreenHeight(kDefaultMargin),
        getProportionateScreenWidth(kDefaultMargin),
        getProportionateScreenHeight(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: kPrimaryTextStyle.copyWith(
              fontSize: getProportionateScreenWidth(fontSize ?? 20),
            ),
          ),
          Visibility(
            visible: hasButtonSeeMore ?? false,
            child: TextButton(
              onPressed: onPressed,
              child: Text('See More'),
              style: TextButton.styleFrom(
                primary: kSecondaryTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
