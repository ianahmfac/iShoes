import 'package:flutter/material.dart';

import '../../config/themes/size_config.dart';
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
  final IconData icon;
  final VoidCallback onPressed;
  final double? buttonSize;
  final Color? backgroundColor;
  final int? qty;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipOval(
          child: Material(
            color: backgroundColor,
            child: InkWell(
              onTap: onPressed,
              child: Container(
                width: getProportionateScreenWidth(buttonSize ?? 40),
                height: getProportionateScreenWidth(buttonSize ?? 40),
                child: Icon(
                  icon,
                  size: getProportionateScreenWidth((buttonSize ?? 40) * 0.5),
                ),
              ),
            ),
          ),
        ),
        // ),
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
