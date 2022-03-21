import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_scan_parser/common/network/data/model/stock_response/StockScanRow.dart';
import 'package:stock_scan_parser/components/stock_row.dart';
import 'package:stock_scan_parser/constants.dart';
import 'package:stock_scan_parser/screens/details_screen/controller/details_controller.dart';

class DetailsScreen extends StatelessWidget {
  final DetailsController _controller = Get.put(DetailsController());

  @override
  Widget build(BuildContext context) {
    var detail = Get.arguments as StockScanRow;
    return Scaffold(
        backgroundColor: kAppColor,
        appBar: AppBar(
          title: const Text(kAppTitle),
        ),
        body: Column(
          children: [
            StockRow(title: detail.name ?? '', subTitle: detail.tag ?? ''),
            Text(
              detail.criteria?[0].text ?? '',
              style: const TextStyle(
                fontSize: kDetailsPageTextSize,
                color: kWhite,
              ),
            ),
          ],
        ));
  }
}
