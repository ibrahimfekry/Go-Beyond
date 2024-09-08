import 'package:flutter/material.dart';

class GoogleWidget extends StatelessWidget {
  const GoogleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: ticketDividerColor, width: 1.w)),
            child: Row(
              children: [
                Flexible(
                  child: SvgPicture.asset(
                      'assets/images/signin_google.svg'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                DefaultText(
                  text: 'Google',
                  fontColor: brush,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Container(
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: ticketDividerColor, width: 1.w)),
            child: Row(
              children: [
                Flexible(
                  child: SvgPicture.asset(
                      'assets/images/signin_facebook.svg'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                DefaultText(
                  text: 'Facebook',
                  fontColor: brush,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}