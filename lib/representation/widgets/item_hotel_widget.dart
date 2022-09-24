import 'package:flutter/material.dart';
import 'package:travo_app/core/constants/color_constants.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/core/helpers/image_helper.dart';
import 'package:travo_app/data/models/hotel_model.dart';
import 'package:travo_app/representation/screen/hotel_detail_screen.dart';
import 'package:travo_app/representation/widgets/button_widget.dart';
import 'package:travo_app/representation/widgets/dashline_widget.dart';

class ItemHotelWidget extends StatelessWidget {
  const ItemHotelWidget({
    super.key,
    required this.hotelModel,
  });
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(bottom: kMediumPadding),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(right: kDefaultPadding),
            child: ImageHelper.loadFromAsset(
              hotelModel.hotelImage,
              radius: const BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding),
                bottomRight: Radius.circular(kDefaultPadding),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelModel.hotelName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoLocation),
                    const SizedBox(width: kMinPadding),
                    Text(hotelModel.location),
                    Expanded(
                      child: Text(
                        '- ${hotelModel.awayKilometer} from destination',
                        style: const TextStyle(
                          color: ColorPalette.subTitleColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoStar),
                    const SizedBox(width: kMinPadding),
                    Text(hotelModel.star.toString()),
                    Text(
                      '- ${hotelModel.numberOfReview} reviews',
                      style: const TextStyle(
                        color: ColorPalette.subTitleColor,
                      ),
                    ),
                  ],
                ),
                const DashLineWidget(),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$${hotelModel.price}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: kMinPadding,
                          ),
                          const Text('/night')
                        ],
                      ),
                    ),
                    Expanded(
                      child: ButtonWidget(
                        title: 'Book a room',
                        ontap: () {
                          Navigator.of(context)
                              .pushNamed(HotelDetailScreen.routeName);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
