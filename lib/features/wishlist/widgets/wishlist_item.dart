import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/custom_circle_button.dart';
import '../../../core/widgets/tap_splash_item.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kBgCardImage,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          TapSlashItem(
            onPressed: () {},
            itemRadius: 16,
            child: Column(
              children: [
                _productImage(),
                _productInfo(),
              ],
            ),
          ),
          _wishlistButton(),
        ],
      ),
    );
  }

  Widget _productInfo() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Adidas Running 2.0',
              style: TextStyle(
                color: kPopularTitleColor,
                fontSize: getProportionateScreenWidth(14),
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
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
    );
  }

  Widget _productImage() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
      child: Image.asset(
        AssetPath.shoesExample,
        height: getProportionateScreenWidth(150),
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _wishlistButton() {
    return Positioned(
      right: 8,
      top: 4,
      child: CustomCircleButton(
        icon: FontAwesomeIcons.solidHeart,
        onPressed: () {},
        buttonSize: 35,
        backgroundColor: kSecondaryColor,
      ),
    );
  }
}
