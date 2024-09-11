import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/core/colors/colors.dart';
import 'package:go_beyond/feature/auth/presentation/pages/register_page.dart';

import '../../../../core/widgets/back_widget.dart';
import '../../../../core/widgets/background_page.dart';
import '../../../../core/widgets/custom_horizontal_divider.dart';
import '../../../../core/widgets/default_text.dart';
import '../../../../core/widgets/default_text_form_field.dart';
import '../widgets/app_title.dart';
import '../widgets/social_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackGroundPage(
        child: Padding(
          padding: EdgeInsets.all(24.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BackWidget(),
              AppTitle(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              DefaultText(
                text: 'Welcome Back , Glad to see you ',
                // fontWeight: FontWeight.w700,
                fontSize: 18.sp,
                // fontFamily: 'Uthman',
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
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: DefaultText(
                  text: 'Forget Password?',
                  fontColor: beyondButton,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Row(
                children: [
                  Expanded(child: CustomHorizontalDivider()),
                  SizedBox(width: 8,),
                  DefaultText(
                    text: 'Or',
                    fontColor: beyondButton,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(width: 8,),
                  Expanded(child: CustomHorizontalDivider()),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              SocialWidget(
                image: 'assets/images/signin_google.svg',
                socialText: 'Login using Google',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              SocialWidget(
                socialText:'Login using Number' ,
                image:'assets/images/phone.svg' ,
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        text: 'Don\'t have an account?  ',
                        fontColor: grey,
                      ),
                      GestureDetector(
                        onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (_)=> RegisterPage())),
                        child: DefaultText(
                          text: 'Register',
                          fontColor: beyondButton,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
