import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_beyond/core/colors/colors.dart';
import 'package:go_beyond/core/widgets/default_text.dart';
import '../home_constants.dart';
import '../widgets/home_popular.dart';
import '../widgets/home_tab_widget.dart';
import '../widgets/home_tour_images.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackGround,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(28.r),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                    radius: 25,
                  ),
                  SizedBox(width: 18,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultText(
                        text: 'Hi Evan',
                      ),
                      DefaultText(
                        text: 'Where Are You Going?',
                        fontWeight: FontWeight.w800,
                        // fontSize: 1.sp,
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.search_outlined,color: beyondButton,size: 32.r,)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          HomeTabWidget(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          Flexible(
            child: ListView.separated(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    // setState(() {
                    //   currentIndex = index;
                    // });
                  },
                  child: HomeTourImages(
                    homeImageModel: homeTourData[index],
                  ),
                );
              },
              separatorBuilder: (context,index){
                return SizedBox(width: 20,);
              },
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultText(
                text: 'Popular Packages',
                fontWeight: FontWeight.w800,
                // fontSize: 1.sp,
              ),
              DefaultText(
                text: 'View ALl',
                fontColor: beyondButton,
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          Flexible(
            child: ListView.separated(
              itemCount: homePopularData.length,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                  },
                  child: HomePopular(
                    homeImageModel: homePopularData[index],
                  ),
                );
              },
              separatorBuilder: (context,index){
                return SizedBox(height: 20,);
              },
            ),
          ),
        ],
      ),
    );
  }
}





