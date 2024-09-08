import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/core/colors/colors.dart';
import 'package:go_beyond/core/widgets/default_button.dart';
import 'package:go_beyond/feature/auth/presentation/cubit/login_state.dart';
import '../../../../core/widgets/default_text.dart';
import '../cubit/login_cubit.dart';
import 'package:go_beyond/locator.dart' as di;

import '../widgets/app_title.dart';
import '../widgets/explore_widget.dart';
import '../widgets/travel_widget.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.locator<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          LoginCubit cubit = BlocProvider.of(context);
          return Scaffold(
            body: Stack(
              children: [
                Image.asset(
                  'assets/images/mountain.jpg',
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BottomSheet(
                        onClosing: () {},
                        builder: (context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Colors.white),
                            padding: EdgeInsets.symmetric(
                                vertical: 20.w, horizontal: 20.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AppTitle(),
                                true == cubit.landingPage
                                    ? ExploreWidget(
                                        cubit: cubit,
                                      )
                                    : TravelWidget(),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



