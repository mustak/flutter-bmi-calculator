import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bmi_calculator/constants.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
//        SizedBox(
//          height: 10,
//        ),
        Text(
          'HEIGHT',
          style: kLabelStyle(kValueDefault),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              _height.toString(),
              style: kValueStyle,
            ),
            Text(
              'cm',
              style: kUnitStyle,
            ),
          ],
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
          //TODO: Move min/max to constants
          min: 110,
          max: 220,
//          activeColor: kValueSelected,
//          inactiveColor: kValueDefault,
        )
      ],
    );
  }
}
