import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator/constants.dart';

class GenderIcon extends StatelessWidget {
  final Gender gender;
  final bool active;

  const GenderIcon({@required this.gender, this.active});

  @override
  Widget build(BuildContext context) {
    IconData faIcon = this.gender == Gender.male
        ? FontAwesomeIcons.mars
        : FontAwesomeIcons.venus;
    String label = this.gender == Gender.male ? 'MALE' : 'FEMALE';

    Color clr;
    if (Theme.of(context).brightness == Brightness.dark) {
      clr = this.active ? kDValueSelected : kDValueDefault;
    } else {
      clr = this.active ? kLValueSelected : kLValueDefault;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          faIcon,
          size: kIconSize,
          color: clr,
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: kLabelStyle(clr),
        )
      ],
    );
  }
}
