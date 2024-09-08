import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/core/colors/colors.dart';

class DefaultTextFormField extends StatefulWidget {
  DefaultTextFormField({
    Key? key,
    this.prefix,
    this.hintText,
    this.textInputType,
    this.height,
    this.suffix,
    this.color,
    this.controller,
    this.borderRadius,
    this.onSubmitted,
    this.onTap,
    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.helperText,
    this.hintColor,
    this.filledColor,
    this.hintTextSize,
    this.fontSize,
    this.border,
    this.maxLines,
    this.readOnly
  }) : super(key: key);
  double? height;
  Widget? prefix;
  Widget? suffix;
  TextInputType? textInputType;
  String? hintText;
  Color? color;
  TextEditingController? controller;
  Function(String)? onSubmitted;
  Function()? onTap;
  final Function(String value)? onChanged;
  double? borderRadius;
  bool obscureText;
  dynamic validator;
  String? helperText;
  Color? hintColor;
  Color? filledColor;
  double? hintTextSize;
  double? fontSize;
  InputBorder? border;
  int? maxLines;
  bool? readOnly;

  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  double? width;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      readOnly: widget.readOnly ?? false,
      onChanged:(value)=> widget.onChanged?.call(value),
      validator: widget.validator,
      onFieldSubmitted: widget.onSubmitted,
      controller: widget.controller,
      keyboardType: widget.textInputType,
      obscureText: widget.obscureText,
      maxLines: widget.maxLines??1,
      style: TextStyle(color:widget.hintColor?? black.withOpacity(0.7),fontSize:widget.fontSize,fontFamily: 'Uthman' ),
      decoration: InputDecoration(
        suffixIcon: widget.suffix,
        prefixIcon: widget.prefix,
        filled: true,
        fillColor: widget.filledColor ?? Colors.white,
        contentPadding:
        EdgeInsets.symmetric(horizontal:12.w,vertical:22.h),
        hintText: '${widget.hintText}',
        hintStyle: TextStyle(fontSize:widget.hintTextSize?? 16.sp, color:widget.hintColor ?? hintTextColor,fontFamily: 'Uthman',),
        border:  widget.border ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide:  const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorStyle: TextStyle(fontSize: 12.sp, color: redColor),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.red,
            )),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
      ),

    );
  }
}

