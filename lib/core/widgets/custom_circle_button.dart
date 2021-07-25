import 'package:flutter/material.dart';
import 'package:ishoes/config/themes/size_config.dart';

import '../constants/theme_constant.dart';
import 'circle_item_count.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.buttonSize,
    this.backgroundColor = kSubtitleColor,
    this.qty = 0,
  }) : super(key: key);
  final Widget icon;
  final VoidCallback onPressed;
  final double? buttonSize;
  final Color? backgroundColor;
  final int? qty;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          iconSize: getProportionateScreenHeight(buttonSize ?? 24),
          padding: const EdgeInsets.all(0.0),
          onPressed: () {},
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(12),
              vertical: getProportionateScreenHeight(12),
            ),
            child: FittedBox(child: icon),
          ),
        ),
        Visibility(
          visible: qty != 0,
          child: Positioned(
            right: 0,
            child: CircleItemCount(qty: qty),
          ),
        )
      ],
    );
  }
}
