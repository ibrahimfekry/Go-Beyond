import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_beyond/core/colors/colors.dart';
import 'package:go_beyond/core/widgets/default_text.dart';

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
          SizedBox(
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
          ),
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
          SizedBox(height: 300,),
          // SingleChildScrollView(
          //   child: Expanded(child: ),
          // ),

        ],
      ),
    );
  }

  List<String> homeTabImages = [
    'assets/images/icon_earth.svg',
    'assets/images/icon_plane.svg',
    'assets/images/icon_hotel.svg',
    'assets/images/icon_taxi.svg'
  ];

  List<String> homeTabText = [
    'Tour',
    'Flight',
    'Hotel',
    'Taxi'
  ];
  List<HomeImageModel> homeTourData = [
    HomeImageModel('assets/images/icon_earth.svg','Turkey','4.9','Turkey , Turkey','420'),
    HomeImageModel('assets/images/icon_earth.svg','Turkey','4.9','Turkey , Turkey','420'),
    HomeImageModel('assets/images/icon_earth.svg','Turkey','4.9','Turkey , Turkey','420'),
    HomeImageModel('assets/images/icon_earth.svg','Turkey','4.9','Turkey , Turkey','420'),
  ];
}

class HomeTabIcon extends StatelessWidget {
  HomeTabIcon({super.key,required this.image,required this.text,required this.active});

  String image;
  String text;
  bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color:active ? beyondButton.withOpacity(0.8): Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(14))
      ),
      child: Center(
        child: Row(
          children: [
            SvgPicture.asset(image,width: 28,height: 32,color: active ? Colors.white : Colors.grey,),
            SizedBox(width: 10,),
            DefaultText(
              text:text ,
              fontColor:active ? Colors.white : brush,
              fontSize: 12.sp,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTourImages extends StatelessWidget {
  HomeTourImages({super.key,this.homeImageModel});
  HomeImageModel? homeImageModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.h,
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(image: AssetImage(homeImageModel?.siteName ??''),fit:BoxFit.fill,),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.6),
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/images/icon_heart.svg',
                      color: beyondButton,
                      // height: 22,
                      // width: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
            child: Container(
              decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(14)
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultText(
                        text: homeImageModel?.siteName,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,color: beyondButton,size: 18.r,),
                          DefaultText(
                            text: homeImageModel?.siteRate,
                            fontSize: 12.sp,
                            // fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height:10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,color: grey,),
                          DefaultText(
                            text: homeImageModel?.siteLocation,
                            fontSize: 11.sp,
                            fontFamily: 'Amiri',
                          ),
                        ],
                      ),
                      DefaultText(
                        text: '\$${homeImageModel?.sitePrice}',
                        fontWeight: FontWeight.w600,
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class HomeImageModel{
  HomeImageModel(this.homeImage,this.siteName,this.siteRate,this.siteLocation,this.sitePrice);
  String? homeImage;
  String? siteName;
  String? siteRate;
  String? siteLocation;
  String? sitePrice;

}