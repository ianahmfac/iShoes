import 'package:flutter/material.dart';

import 'config/routes/app_router.gr.dart';
import 'config/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'iShoes',
        theme: theme(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
