import 'package:flutter/material.dart';
import 'package:stock_scan_parser/components/list_bottom_separator.dart';
import 'package:stock_scan_parser/constants.dart';

class StockRow extends StatelessWidget {
  final String title, subTitle;

  StockRow({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kWhite,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: _getSubtitleColor(subTitle),
                    ),
                  ),
                  const ListBottomSeparator(color: Colors.white)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getSubtitleColor(String? tag) {
    if (tag?.contains(kBullish) == true) {
      return Colors.green;
    } else {
      return Colors.redAccent;
    }
  }
}
