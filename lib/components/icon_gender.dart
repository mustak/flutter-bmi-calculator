import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class IconGender extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const IconGender(
      {@required this.label,
      @required this.icon,
      this.color = kDefaultGenderIconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          this.icon,
          size: 60,
          color: this.color,
        ),
        const SizedBox(height: 10),
        Text(
          this.label,
          style: TextStyle(
            color: this.color.withAlpha(this.color.alpha - 100),
            fontSize: 18,
            letterSpacing: 1,
          ),
        )
      ],
    );
  }
}
