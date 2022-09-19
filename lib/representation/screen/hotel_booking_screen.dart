import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/representation/widgets/app_bar-container.dart';
import 'package:travo_app/representation/widgets/button_widget.dart';
import 'package:travo_app/representation/widgets/item_booking_widget.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static const String routeName = "hotel_booking_screen";

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
        titleString: 'Hotel booking',
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: kMediumPadding,
              ),
              ItemBookingWidget(
                icon: AssetHelper.icoLocation,
                title: 'Destination',
                description: 'Korea',
                onTap: () {},
              ),
              const SizedBox(
                height: kMediumPadding,
              ),
              ItemBookingWidget(
                icon: AssetHelper.icoCalendal,
                title: 'Select date',
                description: '13 Feb - 18 Feb 2021',
                onTap: () {},
              ),
              const SizedBox(
                height: kMediumPadding,
              ),
              ItemBookingWidget(
                icon: AssetHelper.icoBed,
                title: 'Guest and room',
                description: '2 Guest, 1 Room',
                onTap: () {},
              ),
              const SizedBox(
                height: kMediumPadding,
              ),
              ButtonWidget(
                title: "Search",
                ontap: (() {}),
              )
            ],
          ),
        ));
  }
}
