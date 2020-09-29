import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/constants.dart';
import 'package:flutter_bmi_calculator/components/reusable_card.dart';
import 'package:flutter_bmi_calculator/base/cto_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(
                top: 10,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              active: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
            ),
          ),
          CTOButton(
            label: 'Re-Calculate',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
