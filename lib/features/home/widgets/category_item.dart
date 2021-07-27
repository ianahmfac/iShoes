import 'package:flutter/material.dart';
import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.name,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: kPrimaryColor,
          child: InkWell(
            onTap: onPressed,
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(100),
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(10),
                horizontal: getProportionateScreenWidth(16),
              ),
              child: FittedBox(child: Text(name)),
            ),
          ),
        ),
      ),
    );
  }
}
