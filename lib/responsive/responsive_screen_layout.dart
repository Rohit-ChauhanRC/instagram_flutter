import 'package:flutter/material.dart';
import 'package:instagram_flutter/utils/dimensions.dart';

class Responsivelayout extends StatelessWidget {
  const Responsivelayout({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > webScreensSize) {
          // web screen
          return webScreenLayout;
        }
        return mobileScreenLayout;
        // mobile screen
      },
    );
  }
}
