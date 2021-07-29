import 'package:flutter/material.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';
import '../../../core/widgets/tap_splash_item.dart';

class ProductTileItem extends StatelessWidget {
  const ProductTileItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(12)),
      height: getProportionateScreenWidth(120),
      child: TapSlashItem(
        onPressed: () {},
        itemRadius: 16,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AssetPath.shoesExample,
                fit: BoxFit.cover,
                width: getProportionateScreenWidth(120),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Running',
                      style: kSecondaryTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8)),
                    Text(
                      'Adidas Running 2.0',
                      style: kPrimaryTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: kSemiBoldWeight,
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
            ),
          ],
        ),
      ),
    );
  }
}
