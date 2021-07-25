import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ishoes/config/themes/size_config.dart';
import 'package:ishoes/core/constants/theme_constant.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        child: BottomNavigationBar(
          currentIndex: 0,
          iconSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.store),
              activeIcon: _activeNavbarItem(FontAwesomeIcons.store),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidHeart),
              activeIcon: _activeNavbarItem(FontAwesomeIcons.solidHeart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidCommentDots),
              activeIcon: _activeNavbarItem(FontAwesomeIcons.solidCommentDots),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              activeIcon: _activeNavbarItem(FontAwesomeIcons.solidUser),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget _activeNavbarItem(IconData icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Icon(icon),
        SizedBox(height: getProportionateScreenHeight(4)),
        Container(
          height: 4,
          width: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
        )
      ],
    );
  }
}
