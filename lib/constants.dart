import 'package:flutter/material.dart';

const kInactiveCardColor = Color(0xFF111328);
const kActiveCardColor = Color(0xFF1D1E33);
const kBottomContainerHeight = 80.0;

const kMainPinkColor = Color(0xFFEB1555);

const kSelectedValue = Color(0xFFe06483);
const kDefaultValue = Color(0xFF81819b);

TextStyle kLabelStyle(clr) {
  return TextStyle(
    color: clr.withAlpha(clr.alpha - 100),
    fontSize: 18,
    letterSpacing: 1,
  );
}

const kBorderRadius = 15.0;

enum Gender { male, female }
