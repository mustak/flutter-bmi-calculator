import 'package:flutter/material.dart';

const kInactiveCardColor = Color(0xFF111328);
const kActiveCardColor = Color(0xFF1D1E33);
const kBottomContainerHeight = 80.0;

const kMainPinkColor = Color(0xFFEB1555);

const kValueSelected = Color(0xFFe06483);
const kValueDefault = Color(0xFFbcbcd8);

TextStyle kLabelStyle(clr) {
  return TextStyle(
    color: clr.withAlpha(clr.alpha - 100),
    fontSize: 18,
    letterSpacing: 3,
  );
}

const kBorderRadius = 15.0;

enum Gender { male, female }

//Gender related
const double kIconSize = 60;

//Height Related
const int kDefaultHeight = 180;
const kValueStyle = TextStyle(
  color: kValueDefault,
  fontSize: 40,
  fontWeight: FontWeight.w900,
);
const kUnitStyle = TextStyle(
  color: kValueDefault,
  fontSize: 20,
);
