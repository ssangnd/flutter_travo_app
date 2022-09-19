import 'package:flutter/material.dart';

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
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}
