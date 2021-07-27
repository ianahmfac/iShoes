import 'package:flutter/material.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';
import '../models/cashback.dart';
import 'copy_button.dart';

class CashbackItem extends StatelessWidget {
  const CashbackItem({
    Key? key,
    required this.cashback,
  }) : super(key: key);
  final Cashback cashback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Container(
              width: SizeConfig.screenWidth * 0.85,
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(16),
              ),
              color: kSubtitleColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cashback.title,
                    style: kSecondaryTextStyle.copyWith(fontSize: 12),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Cashback ${cashback.amount}%',
                          style: kPrimaryTextStyle.copyWith(
                            fontWeight: kSemiBoldWeight,
                            fontSize: getProportionateScreenWidth(22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: getProportionateScreenWidth(20),
              bottom: getProportionateScreenHeight(12),
              child: CopyButton(
                code: cashback.code,
                onPressed: () {},
              ),
            ),
            Positioned(
              right: getProportionateScreenWidth(-50),
              top: getProportionateScreenHeight(-40),
              child: Container(
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenWidth(180),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kSecondaryTextColor.withOpacity(0.1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
