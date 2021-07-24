import 'package:flutter/material.dart';

import '../constants/theme_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.height = 50,
    this.width = double.infinity,
    this.color = kPrimaryColor,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
