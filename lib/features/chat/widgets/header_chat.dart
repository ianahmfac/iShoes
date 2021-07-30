import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';

class HeaderChat extends StatelessWidget {
  const HeaderChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _back() {
      AutoRouter.of(context).pop();
    }

    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(12),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: _back,
                icon: Icon(
                  FontAwesomeIcons.chevronLeft,
                  size: getProportionateScreenHeight(20),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(12)),
              _chatImage(),
              SizedBox(width: getProportionateScreenWidth(16)),
              _chatName(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chatImage() {
    return Image.asset(
      AssetPath.csPhotoOnline,
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenHeight(50),
      fit: BoxFit.cover,
    );
  }

  Widget _chatName() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'iShoes Customer Helper',
            style: kPrimaryTextStyle.copyWith(
              fontSize: getProportionateScreenHeight(14),
              fontWeight: kSemiBoldWeight,
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(4)),
          Text(
            'Online',
            style: kSecondaryTextStyle.copyWith(
              fontSize: getProportionateScreenHeight(14),
              fontWeight: kSemiBoldWeight,
            ),
          ),
        ],
      ),
    );
  }
}
