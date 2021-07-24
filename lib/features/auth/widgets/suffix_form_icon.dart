import 'package:flutter/material.dart';

import '../../../core/constants/theme_constant.dart';

class SuffixFormIcon extends StatelessWidget {
  const SuffixFormIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Icon(
        icon,
        size: 20,
        color: kPrimaryTextColor,
      ),
    );
  }
}
