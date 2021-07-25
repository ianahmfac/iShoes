import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/constants/theme_constant.dart';

class HeaderTextField extends StatelessWidget {
  const HeaderTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kSubtitleColor,
      ),
      child: TextField(
        enabled: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 11,
          ),
          border: InputBorder.none,
          hintText: 'Search Product',
          hintStyle: kPrimaryTextStyle,
          prefixIcon: Icon(
            FontAwesomeIcons.search,
            color: kPrimaryTextColor,
            size: 16,
          ),
        ),
      ),
    );
  }
}
