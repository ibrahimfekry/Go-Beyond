import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/default_text.dart';
import '../cubit/login_cubit.dart';

class ExploreWidget extends StatelessWidget {
  ExploreWidget({super.key, required this.cubit});

  LoginCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        DefaultText(
          textAlign: TextAlign.center,
          text: 'Explore Your \n Favourite Journey',
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
          'We make planning flights , taxis, and more \n seamless, so you can travel with ease',
          maxLines: 3,
          fontSize: 13.sp,
          fontFamily: 'Uthman',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        DefaultButton(
          width: MediaQuery.of(context).size.width * 0.8,
          text: 'Let\'s Travel',
          color: beyondButton,
          onTap: () => cubit.changeLandingPage(),
        ),
      ],
    );
  }
}
