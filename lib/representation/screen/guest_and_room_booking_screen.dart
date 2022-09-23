import 'package:flutter/cupertino.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/representation/widgets/app_bar-container.dart';

import '../widgets/button_widget.dart';
import '../widgets/item_add_guest_and_room.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  const GuestAndRoomBookingScreen({super.key});

  static const String routeName = "guest_and_room_screen";

  @override
  State<GuestAndRoomBookingScreen> createState() =>
      _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
        titleString: "Add Guest And Room",
        child: Column(
          children: [
            const SizedBox(
              height: kMediumPadding * 1.5,
            ),
            const ItemAddGuestAndRoom(
              icon: AssetHelper.icoGuest,
              initData: 2,
              title: 'Guest',
            ),
            const ItemAddGuestAndRoom(
              icon: AssetHelper.icoRoom,
              initData: 1,
              title: 'Room',
            ),
            ButtonWidget(
              title: 'Select',
              ontap: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            ButtonWidget(
              title: 'Cancel',
              ontap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }
}
