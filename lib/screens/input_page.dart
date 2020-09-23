import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_bmi_calculator/components/gender_icon.dart';
import 'package:flutter_bmi_calculator/components/height_input.dart';
import 'package:flutter_bmi_calculator/components/weight_input.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender = Gender.female;
  int _height = kDefaultHeight;
  int _weight = kDefaultWeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
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
                      child: GenderIcon(
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
                      child: GenderIcon(
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
                child: HeightInput(
                  onSelected: (int newHeight) {
                    setState(() {
                      _height = newHeight;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableCard(
                      active: true,
                      child: WeightInput(
                        updateWeight: (newWeight) {
                          _weight = newWeight;
                        },
                      ),
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
            GestureDetector(
              onTap: () {
                print(Theme.of(context).brightness);
              },
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
