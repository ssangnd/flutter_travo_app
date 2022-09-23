import 'package:flutter/cupertino.dart';
import 'package:travo_app/representation/screen/hotel_screen.dart';
import 'package:travo_app/representation/screen/intro_screen.dart';
import 'package:travo_app/representation/screen/main_app.dart';
import 'package:travo_app/representation/screen/select_date_screen.dart';
import 'package:travo_app/representation/screen/splash_creen.dart';

import 'representation/screen/guest_and_room_booking_screen.dart';
import 'representation/screen/hotel_booking_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  HotelBookingScreen.routeName: (context) => const HotelBookingScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) => GuestAndRoomBookingScreen(),
};
