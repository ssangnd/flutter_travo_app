import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travo_app/core/constants/color_constants.dart';
import 'package:travo_app/core/constants/dismension_constants.dart';
import 'package:travo_app/core/helpers/image_helper.dart';

import '../../core/helpers/asset_helper.dart';
import '../widgets/app_bar-container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return AppBarContainerWidget(
      // title: const Text("Home"),
      // titleString: 'Home',
      // implementLeading: true,
      // implementTraling: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hi Jane!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: kMediumPadding,
                ),
                Text(
                  'Where are you going next?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.bell,
              size: kDefaultIconSize,
              color: Colors.white,
            ),
            const SizedBox(
              width: kTopPadding,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kItemPadding,
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(kMinPadding),
              child: ImageHelper.loadFromAsset(
                AssetHelper.person,
              ),
            ),
          ],
        ),
      ),
      child: Container(
          // color: Colors.amber,
          ),
    );
  }
}
