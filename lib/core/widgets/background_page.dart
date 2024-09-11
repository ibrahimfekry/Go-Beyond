import 'package:flutter/material.dart';

import '../colors/colors.dart';

class BackGroundPage extends StatelessWidget {
  BackGroundPage({required this.child,super.key});

  Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackGround,
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child: child,
    );
  }
}