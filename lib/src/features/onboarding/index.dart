import 'package:czar_design/src/utils/size_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/onboarding_content.dart';
import '../../model/onboarding_data.dart';
import '../../utils/colors.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // color: Colors.lightGreen,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.84,
              child:
              Stack(
                fit: StackFit.expand,
                children: [
                  PageView.builder(
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        OnboardingContent(
                          title: onboardingData[index].title,
                          imageSrc: onboardingData[index].imageSrc,
                          description: onboardingData[index].description,
                        ),
                      ],
                    ),
                                )],
                              ),
                  ),
          ),
        
          

          // SizedBox(height: sizer(false, 30.0, context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizer(true, 32.0, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: sizer(false, 72, context),
                  width: sizer(true, 230, context),
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)
                    )
                  ),
                   child: Text(
                    'Get started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: sizer(true, 18, context),
                      height: 1.6,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Product-Sans'),
                   )),
                ),


                  Flexible(
                    child: SmoothPageIndicator(
                    controller: _controller,
                    count:  onboardingData.length,
                    effect: const ExpandingDotsEffect(
                        spacing: 4.0,
                        expansionFactor: 4,
                        radius: 56,
                        dotWidth: 4.17,
                        dotHeight: 4.0,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: AppColors.black  
                    ),
                  ),
                )

                
              ],
            ),
          )
        ],
      )),
    );
  }
}
