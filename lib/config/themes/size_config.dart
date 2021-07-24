import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
  }
}

double getProportionateScreenHeight(double height) =>
    (height / 844.0) * SizeConfig.screenHeight;

double getProportionateScreenWidth(double width) =>
    (width / 390.0) * SizeConfig.screenWidth;
