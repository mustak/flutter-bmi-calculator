import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                ReusableCard(
                  colour: kActiveCardColor,
                  child: IconGender(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                    color: kSelectedPinkColor, //0xFFFF4F80
                  ),
                ),
                ReusableCard(
                  colour: kInactiveCardColor,
                  child: IconGender(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ReusableCard(),
                ReusableCard(),
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
                bottom: Radius.circular(15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
