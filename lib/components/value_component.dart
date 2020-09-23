import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class ValueComponent extends StatelessWidget {
  final int value;
  final String label;
  ValueComponent({this.value, this.label});

  @override
  Widget build(BuildContext context) {
    Brightness lTheme = Theme.of(context).brightness;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          value.toString(),
          style: lTheme == Brightness.dark ? kDValueStyle : kLValueStyle,
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          label,
          style: lTheme == Brightness.dark ? kDUnitStyle : kLUnitStyle,
        ),
      ],
    );
  }
}
