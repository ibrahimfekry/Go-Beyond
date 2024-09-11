import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

class TravelWidget extends StatelessWidget {
  TravelWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            DefaultText(
              textAlign: TextAlign.center,
              text: 'Travel With Ease',
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              fontFamily: 'Nunito',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            DefaultText(
              textAlign: TextAlign.center,
              text:
              'Simplify planning tours, guides and \n more for effortless travel',
              maxLines: 3,
              // fontSize: 13.sp,
              fontFamily: 'Uthman',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: DefaultButton(
                    // width:  MediaQuery.of(context).size.width * 0.5,
                    text: 'Register',
                    color: beyondButton,
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterPage()))
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: DefaultButton(
                    // width:  MediaQuery.of(context).size.width * 0.5,
                      text: 'sign in',
                      color: Colors.white,
                      textColor: beyondButton,
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()))
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            DefaultButton(
              // width:  MediaQuery.of(context).size.width * 0.5,
              text: 'Continue as Guest ',
              color: borderColorSpecial,
            ),
          ],
        ),
      ),
    );
  }
}
