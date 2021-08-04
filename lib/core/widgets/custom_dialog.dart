import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/themes/size_config.dart';
import '../constants/theme_constant.dart';
import 'custom_button.dart';
import 'custom_circle_button.dart';

class CustomDialog {
  const CustomDialog({
    required this.title,
    required this.confirmationText,
    this.subtitle,
    this.cancelText,
    this.icon,
  });
  final String title;
  final String? subtitle;
  final String confirmationText;
  final String? cancelText;
  final IconData? icon;

  Future<bool?> show(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: kBgColor4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: getProportionateScreenHeight(12)),
                  _buildIcon(),
                  _buildTitleText(),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  _buildSubtitleText(),
                  _buildActionButton(context),
                ],
              ),
              _closeButton(context),
            ],
          ),
        );
      },
    );
  }

  Widget _closeButton(BuildContext context) {
    return Positioned(
      right: 0,
      child: CustomCircleButton(
        icon: FontAwesomeIcons.times,
        onPressed: () => Navigator.pop(context, false),
        buttonSize: 25,
      ),
    );
  }

  Widget _buildActionButton(BuildContext context) {
    return Row(
      children: [
        Visibility(
          visible: cancelText != null,
          child: Expanded(
            child: CustomButton(
              text: cancelText ?? '',
              onPressed: () => Navigator.pop(context, false),
              height: 40,
              textSize: 12,
              color: kSubtitleColor,
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(8)),
        Expanded(
          child: CustomButton(
            text: confirmationText,
            onPressed: () => Navigator.pop(context, true),
            height: 40,
            textSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildSubtitleText() {
    return Visibility(
      visible: subtitle != null,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: getProportionateScreenHeight(20),
        ),
        child: Text(
          subtitle ?? '',
          style: kSecondaryTextStyle.copyWith(
            fontSize: getProportionateScreenWidth(14),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildTitleText() {
    return Text(
      title,
      style: kPrimaryTextStyle.copyWith(
        fontSize: getProportionateScreenWidth(18),
        fontWeight: kSemiBoldWeight,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildIcon() {
    return Visibility(
      visible: icon != null,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: getProportionateScreenHeight(20),
        ),
        child: Icon(
          icon,
          color: kSecondaryColor,
          size: getProportionateScreenWidth(80),
        ),
      ),
    );
  }
}
