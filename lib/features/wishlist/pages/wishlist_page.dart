import 'package:flutter/material.dart';

import '../../../core/constants/asset_path.dart';
import '../../../core/widgets/empty_state.dart';

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
    return EmptyState(
      assetIcon: AssetPath.loveIcon,
      title: 'Wishlist is Empty',
      subtitle: 'Add some product to wishlist',
      hasButton: true,
      buttonText: 'Check Product Now',
      onPressed: () {},
    );
  }
}
