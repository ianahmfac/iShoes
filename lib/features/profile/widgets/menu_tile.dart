import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/tap_splash_item.dart';

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.title,
    required this.icon,
    this.trailingIcon,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final IconData? trailingIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(kDefaultMargin),
        right: getProportionateScreenWidth(kDefaultMargin),
        bottom: getProportionateScreenHeight(16),
      ),
      decoration: BoxDecoration(
        color: kBgColor4,
        borderRadius: BorderRadius.circular(20),
      ),
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      child: TapSlashItem(
        onPressed: onPressed,
        itemRadius: 20,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                icon,
                color: kSecondaryColor,
                size: getProportionateScreenWidth(20),
              ),
              SizedBox(width: getProportionateScreenWidth(kDefaultMargin)),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
              Icon(
                trailingIcon ?? FontAwesomeIcons.chevronRight,
                color: kPrimaryTextColor,
                size: getProportionateScreenWidth(16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
