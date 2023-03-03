import 'package:PaQueue/src/app/pages/splash/splash_view.dart';
import 'package:PaQueue/src/app/utility/colors.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart' hide Router;

import 'src/app/utility/router.dart';

void main() => runApp(PaQueueApp());

class PaQueueApp extends StatelessWidget {
  final Router _router;
  PaQueueApp() : _router = Router();
  @override
  Widget build(BuildContext context) {
    FlutterCleanArchitecture.debugModeOn();
    return MaterialApp(
      title: 'PaQueue',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Color(primaryColor),
              foregroundColor: Colors.white),
          useMaterial3: true),
      initialRoute: SplashPage.route,
      onGenerateRoute: _router.getRoute,
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        _router.routeObserver,
      ],
    );
  }
}
