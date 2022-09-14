import 'package:flutter/material.dart';
import 'package:travo_app/core/helpers/asset_helper.dart';
import 'package:travo_app/core/helpers/image_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash_screen";

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.backgroundSplash,
              fit: BoxFit.fitWidth),
        ),
        Positioned.fill(
            child: ImageHelper.loadFromAsset(AssetHelper.circleSplash))
      ],
    );
  }
}
