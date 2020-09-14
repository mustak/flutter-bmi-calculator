import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_bmi_calculator/components/icon_gender.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender = Gender.female;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
//              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    onClick: () {
                      setState(() {
                        _selectedGender = Gender.male;
                      });
                    },
                    active: _selectedGender == Gender.male,
                    child: IconGender(
                      gender: Gender.male,
                      active: (_selectedGender == Gender.male),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onClick: () {
                      setState(() {
                        _selectedGender = Gender.female;
                      });
                    },
                    active: _selectedGender == Gender.female,
                    child: IconGender(
                      gender: Gender.female,
                      active: (_selectedGender == Gender.female),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              active: true,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    active: true,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    active: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: kBottomContainerHeight,
            //TODO: specify width: double.infinity
            margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
            decoration: BoxDecoration(
              color: kMainPinkColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(kBorderRadius),
              ),
            ),
          )
        ],
      ),
    );
  }
}
