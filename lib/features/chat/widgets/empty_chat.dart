import 'package:flutter/material.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';

class EmptyChat extends StatelessWidget {
  const EmptyChat({
    Key? key,
  }) : super(key: key);

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
              AssetPath.headphoneIcon,
              width: getProportionateScreenHeight(120),
              height: getProportionateScreenHeight(120),
            ),
            SizedBox(height: getProportionateScreenHeight(24)),
            Text(
              'Start Chatting',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
