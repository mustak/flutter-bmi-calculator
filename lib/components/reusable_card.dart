import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
//  final Color colour;
  final Widget child;
  final bool active;
  final Function onClick;

  ReusableCard({this.child, this.active = false, this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onClick,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: this.child,
        decoration: BoxDecoration(
          color: this.active ? kActiveCardColor : kInactiveCardColor,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
      ),
    );
  }
}
