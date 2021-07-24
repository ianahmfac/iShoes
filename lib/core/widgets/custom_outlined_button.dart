import 'package:flutter/material.dart';

import '../constants/theme_constant.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    this.borderColor = kPrimaryColor,
    this.textColor,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color borderColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(text),
        style: OutlinedButton.styleFrom(
          primary: textColor,
          side: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
