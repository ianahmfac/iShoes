import 'package:flutter/material.dart';

import '../../../config/themes/size_config.dart';
import '../../../core/constants/asset_path.dart';
import '../../../core/widgets/empty_state.dart';
import '../widgets/wishlist_item.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: _contentBody(),
    );
  }

  Widget _contentBody() {
    final list = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
    return list.isEmpty
        ? EmptyState(
            assetIcon: AssetPath.loveIcon,
            title: 'Wishlist is Empty',
            subtitle: 'Add some product to wishlist',
            hasButton: true,
            buttonText: 'Check Product Now',
            onPressed: () {},
          )
        : GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16),
              vertical: getProportionateScreenHeight(12),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
            ),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return WishlistItem();
            },
          );
  }
}
