import 'package:flutter/material.dart';

import '../constants.dart';

class RedButtonWidget extends StatelessWidget {
  final double kFontSize = 14;
  final Function onPressed;
  final String btnText;

  const RedButtonWidget(this.onPressed, this.btnText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kAppColor),
      ),
      onPressed: () => {
        onPressed.call(),
      },
      child: Text(
        btnText,
        style: TextStyle(fontSize: kFontSize, color: Colors.white),
      ),
    );
  }
}
