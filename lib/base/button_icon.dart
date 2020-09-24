import 'package:flutter/material.dart';

import 'package:flutter_bmi_calculator/constants.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  ButtonIcon({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Brightness lTheme = Theme.of(context).brightness;
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: lTheme == Brightness.dark
          ? kDInactiveCardColor
          : kLValueDefault.withAlpha(220),
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      constraints: BoxConstraints(
        minHeight: 45,
        minWidth: 45,
      ),
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
    );
  }
}
