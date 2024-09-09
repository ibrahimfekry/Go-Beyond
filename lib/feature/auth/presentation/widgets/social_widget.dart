import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/widgets/default_text.dart';

class SocialWidget extends StatelessWidget {
  SocialWidget({
    super.key,
    required this.image,
    required this.socialText
  });

  String image;
  String socialText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
              image
              // 'assets/images/signin_google.svg'
          ),
          SizedBox(
            width: 10.w,
          ),
          DefaultText(
            text: socialText,
            // ,
          )
        ],
      ),
    );
  }
}
