import 'package:PaQueue/src/app/pages/home/home_view.dart';
import 'package:PaQueue/src/app/pages/splash/splash_view.dart';
import 'package:flutter/material.dart';

class Router {
  final RouteObserver<PageRoute> routeObserver;
  Router() : routeObserver = RouteObserver<PageRoute>();

  Route<dynamic>? getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashPage.route:
        return _buildRoute(false, routeSettings, SplashPage());
      case HomePage.route:
        return _buildRoute(false, routeSettings, HomePage());
      default:
        return null;
    }
  }

  MaterialPageRoute _buildRoute(
          bool disableBack, RouteSettings settings, Widget builder) =>
      MaterialPageRoute(
          settings: settings,
          builder: (_) => WillPopScope(
                child: builder,
                onWillPop: (() async => disableBack),
              ));
}
