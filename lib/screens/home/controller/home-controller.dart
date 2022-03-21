import 'package:get/get.dart';
import 'package:stock_scan_parser/common/base/GetxBaseController.dart';
import 'package:stock_scan_parser/common/network/data/model/stock_response/StockScanResponse.dart';
import 'package:stock_scan_parser/common/network/service/repository.dart';

import '../../../constants.dart';

class HomeController extends GetxBaseController {
  var stockResponse = StockScanResponse();
  var isLoading = true.obs;
  final _repository = Repository();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() async {
    if (await isConnectionAvailable()) {
      stockResponse = await _repository.getData();
    } else {
      showNoInternetConnectionDialog(
        onButtonClick: () => {
          Get.offAllNamed(kRouteHomePage),
          init(),
        },
      );
    }
    isLoading.value = false;
  }
}
