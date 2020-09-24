import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/base/value_component.dart';
import 'package:flutter_bmi_calculator/base/label_component.dart';

class InputHeight extends StatefulWidget {
  final Function onSelected;

  InputHeight({this.onSelected});
  @override
  _InputHeightState createState() => _InputHeightState();
}

class _InputHeightState extends State<InputHeight> {
  int _height = kDefaultHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
//        SizedBox(
//          height: 10,
//        ),
        LabelComponent(label: 'HEIGHT'),
        ValueComponent(label: 'cm', value: _height),
        Slider(
          value: _height.toDouble(),
          onChanged: (newValue) {
            setState(() {
              _height = newValue.toInt();
            });
          },
          onChangeEnd: (newValue) {
            widget.onSelected(newValue.toInt());
          },
          min: kMinHeight,
          max: kMaxHeight,
        )
      ],
    );
  }
}
