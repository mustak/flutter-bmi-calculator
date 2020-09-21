import 'package:flutter/material.dart';

///
/// Card colors
///
const kDInactiveCardColor = Color(0xFF111328);
const kDActiveCardColor = Color(0xFF1D1E33);

///
/// LAbel and value colours
///
const kDValueSelected = Color(0xFFe06483);
const kDValueDefault = Color(0xFFbcbcd8);
const kLValueSelected = Color(0xFFe06483);
const kLValueDefault = Color(0xFF4643a0);

TextStyle kLabelStyle(clr) {
  return TextStyle(
    color: clr.withAlpha(clr.alpha - 80),
    fontSize: 18,
    fontWeight: FontWeight.w700,
    letterSpacing: 3,
  );
}

const kBorderRadius = 15.0;

enum Gender { male, female }

const kBottomContainerHeight = 80.0;
const kMainPinkColor = Color(0xFFEB1555);

//Gender related
const double kIconSize = 60;

//Height Related
const int kDefaultHeight = 180;
const kDValueStyle = TextStyle(
  color: kDValueDefault,
  fontSize: 40,
  fontWeight: FontWeight.w900,
);
const kDUnitStyle = TextStyle(
  color: kDValueDefault,
  fontSize: 20,
);
const kLValueStyle = TextStyle(
  color: kLValueDefault,
  fontSize: 40,
  fontWeight: FontWeight.w900,
);
const kLUnitStyle = TextStyle(
  color: kLValueDefault,
  fontSize: 20,
);
