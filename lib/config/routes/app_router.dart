import 'package:auto_route/annotations.dart';
import 'package:ishoes/features/profile/pages/edit_profile_page.dart';
import '../../features/chat/pages/chat_page.dart';
import '../../features/auth/pages/sign_up_page.dart';
import '../../features/navigation/navigation_page.dart';

import '../../features/auth/pages/sign_in_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: NavigationPage),
    AutoRoute(page: ChatPage),
    AutoRoute(
      page: EditProfilePage,
      fullscreenDialog: true,
    ),
  ],
)
class $AppRouter {}
