import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travo_app/core/constants/color_constants.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/core/helpers/image_helper.dart';
import 'package:travo_app/representation/widgets/button_widget.dart';

import '../../data/models/hotel_model.dart';

class HotelDetailScreen extends StatefulWidget {
  const HotelDetailScreen({super.key, required this.hotelModel});

  static const String routeName = 'hotel_detail_screen';

  final HotelModel hotelModel;

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ImageHelper.loadFromAsset(
              AssetHelper.hotelScreen,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: kMediumPadding * 3,
            left: kMediumPadding,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.all(kItemPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    kDefaultPadding,
                  ),
                ),
                child: const Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 18,
                ),
              ),
            ),
          ),
          Positioned(
            top: kMediumPadding * 3,
            right: kMediumPadding,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: const EdgeInsets.all(kItemPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    kDefaultPadding,
                  ),
                ),
                child: const Icon(
                  FontAwesomeIcons.solidHeart,
                  size: 18,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            maxChildSize: 0.8,
            minChildSize: 0.3,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kMediumPadding,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 2),
                    topRight: Radius.circular(kDefaultPadding * 2),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: kDefaultPadding),
                      child: Container(
                        height: 5,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(kItemPadding),
                          ),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: kDefaultPadding,
                    ),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        //dung data for hotel screen
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.hotelModel.hotelName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Text(
                                '\$${widget.hotelModel.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text('/night'),
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          Row(
                            children: [
                              ImageHelper.loadFromAsset(
                                AssetHelper.icoLocation,
                              ),
                              const SizedBox(
                                width: kMinPadding,
                              ),
                              Text(
                                widget.hotelModel.location,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          Row(
                            children: [
                              ImageHelper.loadFromAsset(AssetHelper.icoStar),
                              const SizedBox(
                                width: kMinPadding,
                              ),
                              Text(
                                "${widget.hotelModel.star}/5",
                              ),
                              Text(
                                '(${widget.hotelModel.numberOfReview})',
                                style: const TextStyle(
                                  color: ColorPalette.subTitleColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          const Text(
                            'Infomation',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          const Text(
                            '''You will find every comfort because many of the 
services that the hotel offers for travellers and of 
course the hotel is very comfortable.''',
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          const Text(
                            'Location',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          const Text(
                            '''Located in the famous neighborhood of Seoul, 
Grand Luxury’s is set in a building built in the 
2010s..''',
                          ),
                          const SizedBox(
                            height: kDefaultPadding,
                          ),
                          ImageHelper.loadFromAsset(
                            AssetHelper.imageMap,
                          ),
                          const SizedBox(
                            height: kDefaultPadding * 2,
                          ),
                          const ButtonWidget(title: 'Select room'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
