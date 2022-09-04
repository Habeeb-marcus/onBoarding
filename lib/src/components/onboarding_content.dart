import 'package:czar_design/src/utils/colors.dart';
import 'package:czar_design/src/utils/size_calculator.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String? title, description, imageSrc;   
  const OnboardingContent({
    this.description,
    this.title,
    this.imageSrc,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: sizer(true, 32, context), right: sizer(true, 32, context), 
      top: sizer(false, 40, context),
       bottom: sizer(false, 40, context) 
       ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // TextButton(
              //   onPressed: (){}, 
                // child:  
                Text(
                  'Skip',
                  style: TextStyle(
                    color: AppColors.text1,
                    fontSize: sizer(true, 15, context),
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Product-Sans'
                     ),
                  //  ),
                  ),
                ],
              ),
                SizedBox(
                  height: sizer(false, 14, context),
                ),
                Image.asset(
                  imageSrc ?? '',
                  height: sizer(false, 430, context),
                  width: sizer(true, 352, context),
                ),
                SizedBox(
                height: sizer(false, 51, context),
              ),
              Text(
                '$title',
                style: TextStyle(
                  color: AppColors.text1,
                  fontSize: sizer(true, 32, context),
                  height: 1.3,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Product-Sans'
                ),
              ),
               SizedBox(
                height: sizer(false, 10, context),
              ),
              Text(
                '$description',
                style: TextStyle(
                  color: AppColors.text2,
                  fontSize: sizer(true, 16, context),
                  height: 1.6,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Product-Sans'
                ),
              ),
            ],
          )
      );
  }
}