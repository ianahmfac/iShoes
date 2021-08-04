import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/routes/app_router.gr.dart';
import '../../../core/widgets/custom_dialog.dart';
import '../../../core/widgets/title_section.dart';
import '../widgets/menu_tile.dart';
import '../widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  void _goToEditProfile(BuildContext context) {
    AutoRouter.of(context).push(EditProfilePageRoute());
  }

  void _signOut(BuildContext context) async {
    final isConfirmed = await CustomDialog(
      title: 'Sign Out?',
      subtitle: 'Do you want to sign out from this account?',
      confirmationText: 'Sign Out',
      cancelText: 'Cancel',
      icon: FontAwesomeIcons.signOutAlt,
    ).show(context);

    if (isConfirmed!) {
      AutoRouter.of(context).replaceAll([SignInPageRoute()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Profile'),
      ),
      body: SingleChildScrollView(child: _contentBody(context)),
    );
  }

  Widget _contentBody(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(),
        TitleSection(title: 'Account'),
        MenuTile(
          icon: FontAwesomeIcons.userEdit,
          title: 'Edit Profile',
          onPressed: () => _goToEditProfile(context),
        ),
        MenuTile(
          icon: FontAwesomeIcons.history,
          title: 'History Transaction',
          onPressed: () {},
        ),
        MenuTile(
          title: 'Help',
          icon: FontAwesomeIcons.questionCircle,
          onPressed: () {},
        ),
        TitleSection(title: 'General'),
        MenuTile(
          title: 'Privacy & Policy',
          icon: FontAwesomeIcons.balanceScale,
          onPressed: () {},
        ),
        MenuTile(
          title: 'Term of Service',
          icon: FontAwesomeIcons.fileInvoice,
          onPressed: () {},
        ),
        MenuTile(
          title: 'Rate App',
          icon: FontAwesomeIcons.star,
          onPressed: () {},
        ),
        TitleSection(title: 'Authentication'),
        MenuTile(
          title: 'Sign Out',
          icon: FontAwesomeIcons.signOutAlt,
          onPressed: () => _signOut(context),
        ),
      ],
    );
  }
}
