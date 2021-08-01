import 'package:flutter/material.dart';

import '../../config/themes/size_config.dart';
import '../constants/theme_constant.dart';
import 'custom_button.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    Key? key,
    required this.assetIcon,
    required this.title,
    this.subtitle,
    this.hasButton = false,
    this.buttonText,
    this.buttonColor,
    this.onPressed,
  }) : super(key: key);
  final String assetIcon;
  final String title;
  final String? subtitle;
  final bool? hasButton;
  final String? buttonText;
  final Color? buttonColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultMargin),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetIcon,
              width: getProportionateScreenHeight(120),
              height: getProportionateScreenHeight(120),
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            Text(
              title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getProportionateScreenHeight(4)),
            Visibility(
              visible: subtitle != null,
              child: Text(
                subtitle ?? '',
                style: kSecondaryTextStyle.copyWith(
                  fontSize: getProportionateScreenWidth(16),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(16)),
            Visibility(
              visible: hasButton ?? false,
              child: CustomButton(
                width: SizeConfig.screenWidth * 0.5,
                text: buttonText ?? 'Button',
                onPressed: onPressed,
                textSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
