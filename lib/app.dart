import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_scan_parser/screens/details_screen/view/details_screen.dart';
import 'package:stock_scan_parser/screens/home/view/home-screen.dart';

import 'constants.dart';
import 'screens/splash/view/splash-screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      theme: ThemeData(
        primaryColor: kAppColor,
      ),
      home: SplashScreen(),
      getPages: [
        GetPage(
          name: kRouteHomePage,
          page: () => HomeScreen(),
        ),
        GetPage(
          name: kDetailsPage,
          page: () => DetailsScreen(),
        ),
      ],
    );
  }
}
