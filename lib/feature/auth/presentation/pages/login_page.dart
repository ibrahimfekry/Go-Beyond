import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/core/colors/colors.dart';

import '../../../../core/widgets/default_text.dart';
import '../../../../core/widgets/default_text_form_field.dart';
import '../widgets/app_title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.keyboard_arrow_left,color: beyondButton,),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            AppTitle(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            DefaultText(
              text: 'Welcome Back , Glad to see you ',
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              fontFamily: 'Uthman',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            DefaultTextFormField(
              hintText: 'Email',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            DefaultTextFormField(
              hintText: 'Password',
              suffix: Icon(Icons.remove_red_eye),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            DefaultText(
              text: 'Forget Password?',
              fontColor: beyondButton,
              fontWeight: FontWeight.w800,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            Row(

              children: [
                Divider(color: beyondButton,height: 2,),
                SizedBox(width: 16,),
                Divider(color: beyondButton,height: 2,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
