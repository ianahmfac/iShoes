import 'package:flutter/material.dart';

import '../constants/theme_constant.dart';
import 'circle_item_count.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.buttonSize = 40.0,
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
        ClipOval(
          child: Material(
            color: backgroundColor,
            child: InkWell(
              onTap: onPressed,
              child: SizedBox(
                width: buttonSize,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: FittedBox(child: icon),
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
