import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_constants.dart';
import 'home_tab_icon.dart';

class HomeTabWidget extends StatefulWidget {
  const HomeTabWidget({super.key});

  @override
  State<HomeTabWidget> createState() => _HomeTabWidgetState();
}

class _HomeTabWidgetState extends State<HomeTabWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                currentIndex = index;
              });
            },
            child: HomeTabIcon(
              text: homeTabText[index],
              image: homeTabImages[index],
              active: index == currentIndex,
            ),
          );
        },
        separatorBuilder: (context,index){
          return SizedBox(width: 20,);
        },
      ),
    );
  }
}