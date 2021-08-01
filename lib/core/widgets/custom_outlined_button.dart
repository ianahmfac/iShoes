import 'package:flutter/material.dart';

import '../../config/themes/size_config.dart';
import '../constants/theme_constant.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.borderColor = kPrimaryColor,
    this.textColor,
    this.textSize,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color borderColor;
  final Color? textColor;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(height ?? 50),
      width: getProportionateScreenWidth(width ?? double.infinity),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(text),
        style: OutlinedButton.styleFrom(
          primary: textColor,
          textStyle: TextStyle(
            fontSize:
                getProportionateScreenWidth(textSize ?? (height ?? 50) * 0.5),
          ),
          side: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
