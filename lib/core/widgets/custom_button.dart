import 'package:flutter/material.dart';

import '../../config/themes/size_config.dart';
import '../constants/theme_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.color = kPrimaryColor,
    this.textSize,
  }) : super(key: key);
  final String text;
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Color? color;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(height ?? 50),
      width: getProportionateScreenWidth(width ?? double.infinity),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: color,
          textStyle: TextStyle(
            fontSize:
                getProportionateScreenWidth(textSize ?? (height ?? 50) * 0.5),
          ),
        ),
      ),
    );
  }
}
