import 'StockScanRow.dart';

class StockScanResponse {
  List<StockScanRow>? _data = [];

  List<StockScanRow>? get data => _data;

  StockScanResponse({List<StockScanRow>? data}) {
    _data = data;
  }

  StockScanResponse.fromJson(dynamic json) {
    var tagObjsJson = (json) as List;
    _data =
        tagObjsJson.map((tagJson) => StockScanRow.fromJson(tagJson)).toList();
    print(_data);
  }
}
