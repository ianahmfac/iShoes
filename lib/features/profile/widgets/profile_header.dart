import 'package:flutter/material.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(16),
        left: getProportionateScreenWidth(50),
        right: getProportionateScreenWidth(50),
      ),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              AssetPath.profileDefault,
              width: getProportionateScreenWidth(100),
              height: getProportionateScreenWidth(100),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(16)),
          FittedBox(
            child: Text(
              'Ian Ahmad Fachriza',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                fontWeight: kSemiBoldWeight,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(4)),
          FittedBox(
            child: Text(
              '@ianahmfac',
              style: kSecondaryTextStyle.copyWith(
                fontSize: getProportionateScreenWidth(14),
                fontWeight: kSemiBoldWeight,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
