import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';

class HeaderTextField extends StatelessWidget {
  const HeaderTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kSubtitleColor,
      ),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(12),
            horizontal: getProportionateScreenWidth(20),
          ),
          border: InputBorder.none,
          hintText: 'Search Product',
          hintStyle: kPrimaryTextStyle,
          prefixIcon: Icon(
            FontAwesomeIcons.search,
            color: kPrimaryTextColor,
            size: getProportionateScreenHeight(18),
          ),
        ),
      ),
    );
  }
}
