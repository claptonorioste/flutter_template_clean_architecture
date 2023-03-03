import './home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomePage extends View {
  static const route = '/homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() =>
      // inject dependencies inwards
      HomePageState();
}

class HomePageState extends ViewState<HomePage, HomeController> {
  HomePageState() : super(HomeController());

  @override
  Widget get view {
    return Scaffold(
        key: globalKey,
        body: Center(
          child: Text('HOME PAGE'),
        ));
  }
}
