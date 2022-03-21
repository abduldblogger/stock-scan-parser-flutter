import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_scan_parser/common/utils/network_util.dart';
import 'package:stock_scan_parser/components/red_button_widget.dart';

import '../../constants.dart';

class GetxBaseController extends GetxController {
  var isLoading = false.obs;

  Future<bool> isConnectionAvailable() async {
    return await NetworkUtils.isInternetAvailable();
  }

  void showDialog(
      {required String title,
      required String bodyText,
      required String buttonText,
      required Color confirmTextColor,
      required Function primaryButtonClickListener}) {
    Get.defaultDialog(
        title: title,
        middleText: bodyText,
        textConfirm: buttonText,
        confirmTextColor: confirmTextColor,
        confirm: RedButtonWidget(primaryButtonClickListener, buttonText));
  }

  void showNoInternetConnectionDialog({required Function onButtonClick}) {
    showDialog(
      title: kTextError,
      bodyText: kNoInternetConnection,
      buttonText: kTryAgain,
      confirmTextColor: kWhite,
      primaryButtonClickListener: () => {Get.back(), onButtonClick.call()},
    );
  }
}
