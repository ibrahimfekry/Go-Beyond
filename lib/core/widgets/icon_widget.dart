
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_beyond/core/colors/colors.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,required this.image,this.active = false,
  });

  final String image;
  final bool active ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: SvgPicture.asset(
        image,
        width: 20,
        height: 20,
        colorFilter: active? ColorFilter.mode(beyondButton, BlendMode.srcIn):ColorFilter.mode(grey, BlendMode.srcIn,
      ),
    )
    );
  }
}
