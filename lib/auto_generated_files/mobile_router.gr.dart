// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:kiosk2/routes/mobile_routes/mobile_login_route.dart';

abstract class Routes {
  static const loginRoute = '/';
  static const all = {
    loginRoute,
  };
}

class MobileRouter extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<MobileRouter>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute<dynamic>(
          builder: (context) => LoginRoute(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
