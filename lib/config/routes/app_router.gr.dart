// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:ishoes/features/auth/pages/sign_in_page.dart' as _i3;
import 'package:ishoes/features/auth/pages/sign_up_page.dart' as _i4;
import 'package:ishoes/features/chat/pages/chat_page.dart' as _i6;
import 'package:ishoes/features/navigation/navigation_page.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SignInPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SignInPage();
        }),
    SignUpPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignUpPage();
        }),
    NavigationPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.NavigationPage();
        }),
    ChatPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ChatPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SignInPageRoute.name, path: '/'),
        _i1.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i1.RouteConfig(NavigationPageRoute.name, path: '/navigation-page'),
        _i1.RouteConfig(ChatPageRoute.name, path: '/chat-page')
      ];
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/');

  static const String name = 'SignInPageRoute';
}

class SignUpPageRoute extends _i1.PageRouteInfo {
  const SignUpPageRoute() : super(name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

class NavigationPageRoute extends _i1.PageRouteInfo {
  const NavigationPageRoute() : super(name, path: '/navigation-page');

  static const String name = 'NavigationPageRoute';
}

class ChatPageRoute extends _i1.PageRouteInfo {
  const ChatPageRoute() : super(name, path: '/chat-page');

  static const String name = 'ChatPageRoute';
}
