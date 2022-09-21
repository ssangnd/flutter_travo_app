import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/representation/screen/select_date_screen.dart';
import 'package:travo_app/representation/widgets/app_bar-container.dart';
import 'package:travo_app/representation/widgets/button_widget.dart';
import 'package:travo_app/representation/widgets/item_booking_widget.dart';
import 'package:travo_app/core/extensions/date_ext.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  static const String routeName = "hotel_booking_screen";

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  String? dateSelected;
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
              StatefulBuilder(builder: (context, setSate) {
                return ItemBookingWidget(
                  icon: AssetHelper.icoCalendal,
                  title: 'Select date',
                  description: dateSelected ?? '13 Feb - 18 Feb 2021',
                  onTap: () async {
                    //khi quay lai can hung no
                    // Navigator.of(context).pushNamed(SelectDateScreen.routeName);
                    final result = await Navigator.of(context)
                        .pushNamed(SelectDateScreen.routeName);
                    if (!(result as List<DateTime?>)
                        .any((element) => element == null)) {
                      dateSelected =
                          '${result[0]?.getStartDate} - ${result[1]?.getEndDate}';
                      setState(() {});
                    }
                  },
                );
              }),
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
