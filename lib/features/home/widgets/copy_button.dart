import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/theme_constant.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({
    Key? key,
    required this.code,
    required this.onPressed,
  }) : super(key: key);
  final String code;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: getProportionateScreenWidth(120),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: kPrimaryTextColor),
          ),
          child: FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(12),
                vertical: getProportionateScreenHeight(4),
              ),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.clone,
                    size: 14,
                  ),
                  SizedBox(width: 8),
                  Text(code),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
