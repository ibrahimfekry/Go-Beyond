import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/default_text.dart';
import '../../data/models/home_image_model.dart';

class HomePopular extends StatelessWidget {
  HomePopular({super.key,required this.homeImageModel});

  HomeImageModel homeImageModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14), // Border radius of 14
            child: Image.asset(homeImageModel.homeImage!,
              width: MediaQuery.of(context).size.width * 0.3,
              height:  120.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultText(
                      text: homeImageModel.siteName,
                      fontSize: 12.sp,
                    ),
                    // SizedBox(width: 10,),
                    Row(
                      children: [
                        Icon(Icons.star,color: grey,size: 18.r,),
                        DefaultText(
                          text: homeImageModel.siteRate,
                          fontSize: 12.sp,
                          // fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                Row(
                  children: [
                    Icon(Icons.date_range,color: grey,size: 18.r,),
                    DefaultText(
                      text: homeImageModel.siteDate,
                      fontSize: 12.sp,
                      // fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range,color: grey,size: 18.r,),
                        DefaultText(
                          text: homeImageModel.siteLocation,
                          fontSize: 12.sp,
                          // fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    DefaultText(
                      text: '\$${homeImageModel.sitePrice}',
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
