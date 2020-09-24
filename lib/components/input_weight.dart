import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/base/button_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/base/value_component.dart';
import 'package:flutter_bmi_calculator/base/label_component.dart';

class InputWeight extends StatefulWidget {
  final Function updateWeight;

  InputWeight({this.updateWeight});

  @override
  _InputWeightState createState() => _InputWeightState();
}

class _InputWeightState extends State<InputWeight> {
  int _weight = kDefaultWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LabelComponent(label: 'WEIGHT'),
        ValueComponent(value: _weight, label: 'kg'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ButtonIcon(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  _weight--;
                });
                widget.updateWeight(_weight);
              },
            ),
            SizedBox(
              width: 20,
            ),
            ButtonIcon(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  _weight++;
                });
                widget.updateWeight(_weight);
              },
            ),
          ],
        ),
      ],
    );
  }
}
