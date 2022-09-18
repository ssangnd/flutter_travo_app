import 'package:flutter/cupertino.dart';
import 'package:travo_app/representation/screen/intro_screen.dart';
import 'package:travo_app/representation/screen/main_app.dart';
import 'package:travo_app/representation/screen/splash_creen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
};
