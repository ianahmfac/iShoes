import 'package:flutter/material.dart';

import '../constants/theme_constant.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.buttonSize,
    this.backgroundColor = kBgColor2,
  }) : super(key: key);
  final Widget icon;
  final VoidCallback onPressed;
  final double? buttonSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: buttonSize ?? 40.0,
      padding: const EdgeInsets.all(0.0),
      onPressed: () {},
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        padding: const EdgeInsets.all(8),
        child: FittedBox(child: icon),
      ),
    );
  }
}
