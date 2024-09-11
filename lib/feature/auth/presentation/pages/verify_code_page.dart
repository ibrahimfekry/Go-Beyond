import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/back_widget.dart';
import '../../../../core/widgets/background_page.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text.dart';
import '../../../../core/widgets/default_text_form_field.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackGroundPage(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(32.r),
            child: Column(
              children: [
                BackWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                DefaultText(
                  text: 'Enter your \n verification code',
                  fontSize: 22.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w700,
                  textHeight: 1.5,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: DefaultTextFormField(
                      textAlign: TextAlign.center,
                      fontSize: 24.sp,
                      maxLength: 1,
                    ),),
                    SizedBox(width: 24,),
                    Expanded(child: DefaultTextFormField(
                      textAlign: TextAlign.center,
                      fontSize: 24.sp,
                    ),),
                    SizedBox(width: 24,),
                    Expanded(child: DefaultTextFormField(
                      textAlign: TextAlign.center,
                      fontSize: 24.sp,
                    ),),
                    SizedBox(width: 24,),
                    Expanded(child: DefaultTextFormField(
                      textAlign: TextAlign.center,
                      fontSize: 24.sp,
                    ),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultText(
                      text: 'Didn\'t receive the code? ',
                      fontColor: grey,
                    ),
                    DefaultText(
                      text: 'Resend it',
                      fontColor: beyondButton,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                DefaultButton(
                  height: 62.h,
                  width:  MediaQuery.of(context).size.width * 0.6,
                  text: 'Verify',
                  color: beyondButton,
                ),
              ],
            ),
          ),
        ),
      ),

    );;
  }
}
