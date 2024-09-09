import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/default_text.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 50,
          backgroundImage: AssetImage(
              'assets/images/mountain_login.png'),
          backgroundColor: Colors.white,
        ),
        DefaultText(
          text: 'GoBeyond',
          fontWeight: FontWeight.w800,
          fontSize: 28.sp,
          // fontFamily: 'Nunito',
        )
      ],
    );
  }
}
