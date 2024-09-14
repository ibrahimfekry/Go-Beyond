import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/widgets/default_text.dart';
import '../../data/models/home_image_model.dart';

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
          image: DecorationImage(image: AssetImage(homeImageModel?.homeImage ??''),fit:BoxFit.fill,),
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
