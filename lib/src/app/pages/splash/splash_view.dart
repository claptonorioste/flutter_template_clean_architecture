import 'package:PaQueue/src/app/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class SplashPage extends View {
  static const route = '/splashpage';
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ViewState<SplashPage, SplashController> {
  SplashPageState() : super(SplashController());

  @override
  Widget get view {
    return Scaffold(
        key: globalKey,
        body: Center(
          child: Text('Splash Page'),
        ));
  }
}
