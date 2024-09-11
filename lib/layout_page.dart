import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/core/colors/colors.dart';
import 'dart:ui' as ui;
import 'core/widgets/icon_widget.dart';
import 'feature/booking/pages/booking_page.dart';
import 'feature/home/pages/home_page.dart';
import 'feature/message/pages/message_page.dart';
import 'feature/profile/pages/profile_page.dart';

class LayoutPage extends StatefulWidget {
  LayoutPage({super.key,});

  static String id = 'LayoutPage';
  int? myIndex = 0;

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {

  @override
  void initState() {
    // DioHelper.initMethod();
    // setState(() {
    //   appLanguage = BlocProvider.of<LanguageCubit>(context).appliedLanguage ;
    // });
    super.initState();
  }
  List screens = [
    HomePage(),
    BookingPage(),
    MessagePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  BottomNavigationBar _buildBottomBar() {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: appBackGround,
      currentIndex: widget.myIndex!,
      onTap: (newIndex) {
        setState(() {
          widget.myIndex = newIndex;
          // CacheHelper.saveData(key: Constants.layoutIndex.toString(), value: newIndex);
        });
      },
      selectedItemColor: beyondButton,
      unselectedItemColor: brush,
      selectedLabelStyle: TextStyle(
        color: beyondButton,
      ),
      unselectedLabelStyle: TextStyle(
        color: brush,
      ),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: IconWidget(
            image: 'assets/images/icon_home.svg',
          ),
          label: 'Home',
          activeIcon: IconWidget(
            active: true,
            image: 'assets/images/icon_home.svg',
          ),
        ),
        BottomNavigationBarItem(
          icon: IconWidget(
            image: 'assets/images/icon_ticket.svg',
          ),
          label: 'Booking',
          activeIcon: IconWidget(
            active: true,
            image: 'assets/images/icon_ticket.svg',
          ),
        ),
        BottomNavigationBarItem(
          icon: IconWidget(
            image: 'assets/images/icon-communication.svg',
          ),
          label: 'Message',
          activeIcon: IconWidget(
            active: true,
            image: 'assets/images/icon-communication.svg',
          ),
        ),
        BottomNavigationBarItem(
          icon: IconWidget(
            image: 'assets/images/icon_profile.svg',
          ),
          label: 'Profile',
          activeIcon: IconWidget(
            active: true,
            image: 'assets/images/icon_profile.svg',
          ),
        ),
      ],
    );
  }

  Container _buildBody() {
    return Container(
      child: screens[widget.myIndex!],
    );
  }
}

