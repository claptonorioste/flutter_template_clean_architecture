import 'dart:async';

import 'package:PaQueue/src/app/pages/home/home_view.dart';
import 'package:PaQueue/src/app/pages/splash/splash_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class SplashController extends Controller {
  final SplashPresenter splashPresenter;
  // Presenter should always be initialized this way
  SplashController()
      : splashPresenter = SplashPresenter(),
        super() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(getContext()).pushReplacementNamed(HomePage.route);
      },
    );
  }

  @override
  // this is called automatically by the parent class
  void initListeners() {}

  @override
  void onResumed() => print('On resumed');

  @override
  void onReassembled() => print('View is about to be reassembled');

  @override
  void onDeactivated() => print('View is about to be deactivated');

  @override
  void onDisposed() {
    splashPresenter.dispose(); // don't forget to dispose of the presenter
    super.onDisposed();
  }
}
