import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/feature/auth/presentation/pages/verify_code_page.dart';
import 'package:go_beyond/feature/auth/presentation/widgets/app_title.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/back_widget.dart';
import '../../../../core/widgets/background_page.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text.dart';
import '../../../../core/widgets/default_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackGroundPage(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              children: [
                BackWidget(),
                AppTitle(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                DefaultText(
                  text: 'Welcome, Create your new account',
                  fontSize: 18.sp,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                DefaultTextFormField(
                  hintText: 'Email',
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                Row(
                  children: [
                    Expanded(
                      child: DefaultTextFormField(
                        hintText: 'First Name',
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: DefaultTextFormField(
                        hintText: 'Last Name',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                DefaultTextFormField(
                  hintText: 'Number',
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                DefaultTextFormField(
                  hintText: 'Password',
                  suffix: Icon(Icons.remove_red_eye),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                DefaultTextFormField(
                  hintText: 'Confirm Password',
                  suffix: Icon(Icons.remove_red_eye),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultText(
                      text: 'Already have an account?  ',
                      fontColor: grey,
                    ),
                    GestureDetector(
                      onTap: ()=> Navigator.pop(context),
                      child: DefaultText(
                        text: 'Sign In',
                        fontColor: beyondButton,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                DefaultButton(
                  height: 62.h,
                  // width:  MediaQuery.of(context).size.width * 0.5,
                  text: 'Register',
                  color: beyondButton,
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>VerifyCodePage()))

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



