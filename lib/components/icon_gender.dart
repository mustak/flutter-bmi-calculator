import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class IconGender extends StatelessWidget {
  final Gender gender;
  final bool active;

  const IconGender({@required this.gender, this.active});

  @override
  Widget build(BuildContext context) {
    IconData faIcon = this.gender == Gender.male
        ? FontAwesomeIcons.mars
        : FontAwesomeIcons.venus;
    Color clr = this.active ? kSelectedPinkColor : kDefaultGenderIconColor;
    String label = this.gender == Gender.male ? 'MALE' : 'FEMALE';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          faIcon,
          size: 60,
          color: clr,
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
            color: clr.withAlpha(clr.alpha - 100),
            fontSize: 18,
            letterSpacing: 1,
          ),
        )
      ],
    );
  }
}
