import 'package:flutter/material.dart';
import 'package:ishoes/core/widgets/tap_splash_item.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_outlined_button.dart';

class ProductInChat extends StatelessWidget {
  const ProductInChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.7,
      height: getProportionateScreenHeight(150),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(8)),
      padding: EdgeInsets.all(getProportionateScreenHeight(8)),
      child: Column(
        children: [
          Expanded(
            child: _productItem(),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          _actionButton(),
        ],
      ),
    );
  }

  Widget _productItem() {
    return TapSlashItem(
      onPressed: () {},
      itemRadius: 8,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AssetPath.shoesExample,
              width: getProportionateScreenWidth(100),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(8)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Adidas Running 2.0',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(14),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: getProportionateScreenHeight(8)),
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
        ],
      ),
    );
  }

  Widget _actionButton() {
    return Row(
      children: [
        Expanded(
          child: CustomOutlinedButton(
            text: '+ Cart',
            onPressed: () {},
            height: getProportionateScreenHeight(30),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(8)),
        Expanded(
          child: CustomButton(
            text: 'Buy',
            onPressed: () {},
            height: getProportionateScreenHeight(30),
          ),
        ),
      ],
    );
  }
}
