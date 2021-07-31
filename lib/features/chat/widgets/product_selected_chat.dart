import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_circle_button.dart';

class ProductSelectedChat extends StatelessWidget {
  const ProductSelectedChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(90),
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenHeight(12),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(8),
        vertical: getProportionateScreenHeight(4),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        color: kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AssetPath.shoesExample,
              width: getProportionateScreenHeight(90),
              height: getProportionateScreenHeight(90),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(16)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Adidas Running 2.0',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: kSemiBoldWeight,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: getProportionateScreenHeight(4)),
                Text(
                  '\$25.05',
                  style: kPriceTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(14),
                    fontWeight: kSemiBoldWeight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(16)),
          CustomCircleButton(
            icon: FontAwesomeIcons.times,
            backgroundColor: kAlertColor,
            onPressed: () {},
            buttonSize: 25,
          )
        ],
      ),
    );
  }
}
