import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/core/helpers/image_helper.dart';

class ItemUtilityHotelWidget extends StatelessWidget {
  ItemUtilityHotelWidget({super.key});

  final List<Map<String, String>> listUtility = [
    {'icon': AssetHelper.icoWifi, 'name': 'Free\nWifi'},
    {'icon': AssetHelper.icoNonRefund, 'name': 'Non-\nRefundable'},
    {'icon': AssetHelper.icoBreakfast, 'name': 'Free\nBreakfast'},
    {'icon': AssetHelper.icoNonSmoke, 'name': 'Non\nSmoke'},
  ];

  Widget _buildItemUtility(String icon, String title) {
    return Column(
      children: [
        ImageHelper.loadFromAsset(icon),
        const SizedBox(
          height: kTopPadding,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: kDefaultPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [],
        children: listUtility
            .map((e) => _buildItemUtility(e['icon']!, e['name']!))
            .toList(),
      ),
    );
  }
}
