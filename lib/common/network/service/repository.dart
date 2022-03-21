import 'package:stock_scan_parser/common/network/data/model/stock_response/StockScanResponse.dart';

import 'api-provider.dart';

class Repository {
  ApiProvider apiProvider = ApiProvider();

  Future<StockScanResponse> getData() => apiProvider.fetchData();
}
