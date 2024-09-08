import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors/colors.dart';

class DefaultText extends StatelessWidget {
  DefaultText(
      {Key? key,
        this.text,
        this.textStyle,
        this.fontSize ,
        this.fontColor,
        this.fontWeight,
        this.maxLines,
        this.textHeight,
        this.fontFamily,
        this.wordSpacing,
        this.textDirection,
        this.textAlign
      })
      : super(key: key);
  String? text;
  FontWeight? fontWeight;
  double? fontSize = 16.sp;
  Color? fontColor = brush;
  dynamic textStyle;
  int? maxLines;
  double? textHeight;
  String? fontFamily;
  double? wordSpacing;
  TextDirection? textDirection;
  TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection:textDirection,
      '$text',
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      softWrap: true,
      textAlign: textAlign,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize,
            color: fontColor ?? brush,
            fontWeight: fontWeight ?? FontWeight.w500,
            height: textHeight,
            fontFamily: fontFamily ?? 'Amiri' ,
            wordSpacing: wordSpacing,
          ),
    );
  }
}