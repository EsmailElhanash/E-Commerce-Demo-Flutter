import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'screens/welcome.dart';

void main() {
  runApp(MaterialApp(
      title: 'ECommerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenWidget();
  }
}

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 0,
        navigateAfterSeconds: Welcome(),
        title: Text('E-Commerce App'),
        image: Image.asset('graphics/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.red);
  }
}
