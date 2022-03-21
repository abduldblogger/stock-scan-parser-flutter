import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stock_scan_parser/constants.dart';
class SplashController extends GetxController {
  var version = "".obs;
  var buildNumber = "".obs;

  @override
  void onInit() async {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(kRouteHomePage);
    });
    _fetchPackageInfo();
    super.onInit();
  }

  void _fetchPackageInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    version.value = packageInfo.version;
    buildNumber.value = packageInfo.buildNumber;
  }
}
