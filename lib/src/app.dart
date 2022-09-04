import 'package:czar_design/src/constants/key.dart';
import 'package:czar_design/src/features/onboarding/index.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, child) => 
      // ResponsiveWrapper.builder(
      //     BouncingScrollWrapper.builder(context, child!),
      //     maxWidth: 1200,
      //     minWidth: 450,
      //     defaultScale: true,
      //     breakpoints: [
      //       const ResponsiveBreakpoint.resize(450, name: MOBILE),
      //       const ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
      //       const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //       const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //     ],),
      title: AppKeys.appName,
      debugShowCheckedModeBanner: AppKeys.isDebug,
      theme: ThemeData(
        fontFamily: 'Product-Sans',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const OnboardingView(),
    );
  }
}

