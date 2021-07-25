import 'package:flutter/material.dart';
import 'package:ishoes/config/themes/size_config.dart';
import 'package:ishoes/core/constants/theme_constant.dart';

class CircleItemCount extends StatelessWidget {
  const CircleItemCount({
    Key? key,
    this.qty = 0,
  }) : super(key: key);

  final int? qty;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(16),
      height: getProportionateScreenHeight(16),
      decoration: BoxDecoration(
        color: kAlertColor,
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(2),
      ),
      child: FittedBox(
        child: Text(
          '$qty',
          style: TextStyle(fontWeight: kSemiBoldWeight),
        ),
      ),
    );
  }
}
