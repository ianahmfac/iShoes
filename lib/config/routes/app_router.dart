import 'package:auto_route/annotations.dart';

import '../../features/auth/pages/sign_in_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: SignInPage, initial: true),
  ],
)
class $AppRouter {}
