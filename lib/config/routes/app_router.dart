import 'package:auto_route/annotations.dart';
import 'package:ishoes/features/auth/pages/sign_up_page.dart';

import '../../features/auth/pages/sign_in_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: SignInPage, initial: true),
    AutoRoute(page: SignUpPage)
  ],
)
class $AppRouter {}
