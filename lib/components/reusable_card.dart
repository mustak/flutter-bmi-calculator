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
    Color clr;
    if (Theme.of(context).brightness == Brightness.dark) {
      clr = this.active ? kDActiveCardColor : kDInactiveCardColor;
    } else {
      clr = Color(0xFFdee2ea);
    }

    return GestureDetector(
      onTap: this.onClick,
      child: Container(
        margin: const EdgeInsets.all(10),
        child: this.child,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
      ),
    );
  }
}
