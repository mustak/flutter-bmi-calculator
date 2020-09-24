import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class LabelComponent extends StatelessWidget {
  const LabelComponent({this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    Brightness lTheme = Theme.of(context).brightness;

    return Text(
      label,
      style: kLabelStyle(
          lTheme == Brightness.dark ? kDValueDefault : kLValueDefault),
    );
  }
}
