import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class CTOButton extends StatelessWidget {
  final String label;
  final Function onPress;

  CTOButton({@required this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: kBottomContainerHeight,
        //TODO: specify width: double.infinity
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        decoration: BoxDecoration(
          color: kMainPinkColor,
          // borderRadius: BorderRadius.vertical(
          //   bottom: Radius.circular(kBorderRadius),
          // ),
        ),
        child: Center(
          child: Text(
            label.toUpperCase(),
            style: kCTOStyle,
          ),
        ),
      ),
    );
  }
}
