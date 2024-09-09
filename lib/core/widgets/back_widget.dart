import 'package:flutter/material.dart';

import '../colors/colors.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ()=> Navigator.pop(context),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.keyboard_arrow_left,color: beyondButton,),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01,)
      ],
    );
  }
}
