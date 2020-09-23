import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/value_component.dart';

class HeightInput extends StatefulWidget {
  final Function onSelected;

  HeightInput({this.onSelected});
  @override
  _HeightInputState createState() => _HeightInputState();
}

class _HeightInputState extends State<HeightInput> {
  int _height = kDefaultHeight;

  @override
  Widget build(BuildContext context) {
    Brightness lTheme = Theme.of(context).brightness;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
//        SizedBox(
//          height: 10,
//        ),
        Text(
          'HEIGHT',
          style: kLabelStyle(
              lTheme == Brightness.dark ? kDValueDefault : kLValueDefault),
        ),
        ValueComponent(
          label: 'cm',
          value: _height,
        ),
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
