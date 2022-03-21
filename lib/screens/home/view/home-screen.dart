import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_scan_parser/components/stock_row.dart';
import 'package:stock_scan_parser/constants.dart';
import 'package:stock_scan_parser/screens/details_screen/view/details_screen.dart';
import 'package:stock_scan_parser/screens/home/controller/home-controller.dart';

class HomeScreen extends StatelessWidget {
  final _controller = Get.put(HomeController());

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppColor,
      appBar: AppBar(
        title: const Text(kAppTitle),
      ),
      body: Obx(() => _getWidget()),
    );
  }

  Widget _getWidget() {
    if (_isLoading()) {
      return kLoadingIndicator;
    } else {
      return _buildCategories();
    }
  }

  bool _isLoading() {
    return _controller.isLoading.value == true;
  }

  Widget _buildCategories() {
    return Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: ListView.builder(
            controller: null, // no need for demo
            itemCount: _controller.stockResponse.data?.length ?? 0,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              final row = _controller.stockResponse.data;
              return InkWell(
                onTap: () =>
                    {Get.to(() => DetailsScreen(), arguments: row?[index])},
                child: StockRow(
                    title: row?[index].name ?? '',
                    subTitle: row?[index].tag ?? ''),
              );
            }));
  }
}
