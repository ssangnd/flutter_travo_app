import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/image_helper.dart';
import 'package:travo_app/representation/widgets/item_utility_hotel_widget.dart';

class ItemRoomBookingWidget extends StatelessWidget {
  const ItemRoomBookingWidget({
    super.key,
    required this.roomImage,
    required this.roomName,
    required this.roomPrice,
    required this.roomSize,
    required this.roomUtility,
  });

  final String roomImage;
  final String roomName;
  final String roomPrice;
  final String roomSize;
  final String roomUtility;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(kItemPadding),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(roomName),
                  const SizedBox(
                    height: kMinPadding,
                  ),
                  Text(
                    'Room sized: $roomSize',
                  ),
                  const SizedBox(
                    height: kMinPadding,
                  ),
                  Text(
                    roomUtility,
                  ),
                ],
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              ImageHelper.loadFromAsset(
                roomImage,
                radius: const BorderRadius.all(
                  Radius.circular(
                    kMinPadding,
                  ),
                ),
              ),
            ],
          ),
          ItemUtilityHotelWidget()
        ],
      ),
    );
  }
}
