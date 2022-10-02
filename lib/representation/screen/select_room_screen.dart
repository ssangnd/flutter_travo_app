import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/representation/widgets/app_bar-container.dart';
import 'package:travo_app/representation/widgets/item_utility_hotel_widget.dart';

class SelectRoomScreen extends StatelessWidget {
  const SelectRoomScreen({super.key});
  static const String routeName = 'select_room_screen';

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titleString: 'Select room',
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: kMediumPadding,
            ),
            ItemUtilityHotelWidget()
          ],
        ),
      ),
    );
  }
}
