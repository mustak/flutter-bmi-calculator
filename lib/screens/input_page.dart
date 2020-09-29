import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_bmi_calculator/components/input_gender.dart';
import 'package:flutter_bmi_calculator/components/input_height.dart';
import 'package:flutter_bmi_calculator/components/counter_widget.dart';
import 'package:flutter_bmi_calculator/base/cto_button.dart';
import 'package:flutter_bmi_calculator/bmi_calculator.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _gender = Gender.female;
  int _height = kDefaultHeight;
  int _weight = kDefaultWeight;
  int _age = kDefaultAge;

  @override
  Widget build(BuildContext context) {
    BMICalculator calc = BMICalculator(weight: _weight, height: _height);

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
                          _gender = Gender.male;
                        });
                      },
                      active: _gender == Gender.male,
                      child: InputGender(
                        gender: Gender.male,
                        active: (_gender == Gender.male),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onClick: () {
                        setState(() {
                          _gender = Gender.female;
                        });
                      },
                      active: _gender == Gender.female,
                      child: InputGender(
                        gender: Gender.female,
                        active: (_gender == Gender.female),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                active: true,
                child: InputHeight(
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
                      child: CounterWidget(
                        updateValue: (newWeight) {
                          _weight = newWeight;
                        },
                        label: 'WEIGHT',
                        defaultValue: kDefaultWeight,
                        unit: 'kg',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      active: true,
                      child: CounterWidget(
                        updateValue: (newAge) {
                          _age = newAge;
                        },
                        label: 'AGE',
                        defaultValue: kDefaultAge,
                        unit: 'yrs',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CTOButton(
              label: 'Calculate',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      result: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                      bmi: calc.calculateBMI(),
                      color: calc.getColor(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
