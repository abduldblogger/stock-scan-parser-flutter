import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stock_scan_parser/common/network/data/model/stock_response/StockScanResponse.dart';

import '../../../constants.dart';

class ApiProvider {
  static const _stockApi = "/data";

  Future<StockScanResponse> fetchData() async {
    const _url = "$kApiEndpoint$_stockApi";
    http.Response response = await http.get(
      Uri.parse(_url),
    );
    if (response.statusCode == 200) {
      print(response.body);
      return StockScanResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('$kDataFetchFailMsg :: ${response.statusCode}');
    }
  }
}
