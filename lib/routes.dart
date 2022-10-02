import 'package:flutter/material.dart';
import 'package:travo_app/data/models/hotel_model.dart';
import 'package:travo_app/representation/screen/hotel_detail_screen.dart';
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
  HotelBookingScreen.routeName: (context) => const HotelBookingScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) =>
      const GuestAndRoomBookingScreen(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  // HotelDetailScreen.routeName: (context) => const HotelDetailScreen(),
};

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HotelDetailScreen.routeName:
      return MaterialPageRoute(
        builder: (context) {
          final hotelModel = (settings.arguments as HotelModel);
          return HotelDetailScreen(
            hotelModel: hotelModel,
          );
        },
      );
    default:
  }
}
