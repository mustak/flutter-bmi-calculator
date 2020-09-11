import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
//  final Color colour;
  final Widget child;
  final Function onClick;
  final bool active;

  ReusableCard({this.child, this.onClick, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: this.onClick,
        child: Container(
          margin: const EdgeInsets.all(15),
          child: this.child,
          decoration: BoxDecoration(
            color: this.active ? kActiveCardColor : kInactiveCardColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
        ),
      ),
    );
  }
}
