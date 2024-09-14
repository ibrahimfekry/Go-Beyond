import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/default_text.dart';

class HomeTabIcon extends StatelessWidget {
  HomeTabIcon({super.key,required this.image,required this.text,required this.active});

  String image;
  String text;
  bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color:active ? beyondButton.withOpacity(0.8): Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(14))
      ),
      child: Center(
        child: Row(
          children: [
            SvgPicture.asset(image,width: 28,height: 32,color: active ? Colors.white : Colors.grey,),
            SizedBox(width: 10,),
            DefaultText(
              text:text ,
              fontColor:active ? Colors.white : brush,
              fontSize: 12.sp,
            ),
          ],
        ),
      ),
    );
  }
}
