import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/button_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/components/value_component.dart';

class WeightInput extends StatefulWidget {
  final Function updateWeight;

  WeightInput({this.updateWeight});

  @override
  _WeightInputState createState() => _WeightInputState();
}

class _WeightInputState extends State<WeightInput> {
  int _weight = kDefaultWeight;

  @override
  Widget build(BuildContext context) {
    Brightness lTheme = Theme.of(context).brightness;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WEIGHT',
          style: kLabelStyle(
              lTheme == Brightness.dark ? kDValueDefault : kLValueDefault),
        ),
        ValueComponent(
          value: _weight,
          label: 'kg',
        ),
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
