import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_scan_parser/screens/splash/controller/splash_controller.dart';

import '../../../constants.dart';

class SplashScreen extends StatelessWidget {
  final SplashController _controller = Get.put(SplashController());

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
            width: double.infinity,
          ),
          const Text(
            kAppTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: kSplashTextTitleSize,
            ),
          ),
          Obx(
            () => Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    kAppVersion +
                        _controller.version.value +
                        " (" +
                        _controller.buildNumber.value +
                        ") ",
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: kSplashTextVersionSize,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
