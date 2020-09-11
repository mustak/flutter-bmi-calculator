import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget child;

  ReusableCard({this.colour = kInactiveCardColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: this.child,
        decoration: BoxDecoration(
          color: this.colour,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
      ),
    );
  }
}
