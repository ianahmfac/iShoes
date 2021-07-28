import 'package:flutter/material.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/constants/theme_constant.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kPrimaryTextColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: getProportionateScreenWidth(215),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                child: Image.asset(
                  AssetPath.shoesExample,
                  fit: BoxFit.cover,
                  height: getProportionateScreenHeight(180),
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Running',
                        style: kSecondaryTextStyle.copyWith(
                          fontSize: getProportionateScreenHeight(12),
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(8)),
                      Text(
                        'Adidas Running 2.0',
                        style: kPrimaryTextStyle.copyWith(
                          fontSize: getProportionateScreenHeight(18),
                          color: kPopularTitleColor,
                          fontWeight: kSemiBoldWeight,
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(8)),
                      Text(
                        '\$25.05',
                        style: kPriceTextStyle.copyWith(
                          fontSize: getProportionateScreenHeight(14),
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
      ),
    );
  }
}
