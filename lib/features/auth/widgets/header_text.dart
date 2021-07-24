import 'package:flutter/material.dart';

import '../../../core/constants/theme_constant.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: kPrimaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: kSemiBoldWeight,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          subtitle,
          style: kSecondaryTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
