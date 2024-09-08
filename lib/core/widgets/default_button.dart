import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors/colors.dart';
import 'default_text.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({this.text,this.fontSize,this.color,this.height,this.onTap,this.width,this.textColor,this.loadingWidget,super.key});

  double? height;
  void Function()? onTap;
  Color? color;
  double? fontSize;
  String? text;
  double? width;
  Color? textColor;
  Widget? loadingWidget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 54.h,
        width:width ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: color ?? beyondButton,
          border: Border.all(color: textColor??Colors.transparent,width: 2),
        ),
        child: Center(
          child:loadingWidget ?? DefaultText(
            // textAlign: TextAlign.center,
            text: text,
            fontSize: fontSize ?? 16.sp,
            fontColor: textColor ??Colors.white,
          ),
        ),
      ),
    );
  }
}
