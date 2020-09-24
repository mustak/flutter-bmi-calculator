import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/base/button_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/base/value_component.dart';
import 'package:flutter_bmi_calculator/base/label_component.dart';

class CounterWidget extends StatefulWidget {
  final int defaultValue;
  final String label;
  final String unit;
  final Function updateValue;

  CounterWidget({this.defaultValue, this.label, this.unit, this.updateValue});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _value; // = kDefaultWeight;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.defaultValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LabelComponent(label: widget.label),
        ValueComponent(value: _value, label: widget.unit),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ButtonIcon(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                setState(() {
                  _value--;
                });
                widget.updateValue(_value);
              },
            ),
            SizedBox(
              width: 20,
            ),
            ButtonIcon(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                setState(() {
                  _value++;
                });
                widget.updateValue(_value);
              },
            ),
          ],
        ),
      ],
    );
  }
}
