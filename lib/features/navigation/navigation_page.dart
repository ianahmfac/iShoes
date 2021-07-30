import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/routes/app_router.gr.dart';
import '../../config/themes/size_config.dart';
import '../../core/constants/theme_constant.dart';
import '../home/pages/home_page.dart';
import '../profile/pages/profile_page.dart';
import '../wishlist/pages/wishlist_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(getProportionateScreenWidth(30)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          iconSize: getProportionateScreenWidth(22),
          onTap: (value) {
            if (value == 2) {
              AutoRouter.of(context).push(ChatPageRoute());
              return;
            }
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            _bottomNavBarItem(FontAwesomeIcons.store),
            _bottomNavBarItem(FontAwesomeIcons.solidHeart),
            _bottomNavBarItem(FontAwesomeIcons.solidCommentDots),
            _bottomNavBarItem(FontAwesomeIcons.solidUser),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    switch (_currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return WishlistPage();
      case 3:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  BottomNavigationBarItem _bottomNavBarItem(IconData icon) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(top: getProportionateScreenHeight(16)),
        child: Icon(icon),
      ),
      activeIcon: _activeNavbarItem(icon),
      label: '',
    );
  }

  Widget _activeNavbarItem(IconData icon) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: getProportionateScreenHeight(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(icon),
            SizedBox(height: getProportionateScreenHeight(4)),
            Container(
              height: 4,
              width: 4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
