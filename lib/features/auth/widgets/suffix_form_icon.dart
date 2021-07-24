import 'package:flutter/material.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';

class SuffixFormIcon extends StatelessWidget {
  const SuffixFormIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(24)),
      child: Icon(
        icon,
        size: 16,
        color: kPrimaryTextColor,
      ),
    );
  }
}
