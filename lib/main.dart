import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/input_page.dart';
import 'package:flutter_bmi_calculator/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primaryColor: Color(0xFF5A55CA),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: kLValueSelected,
          inactiveTrackColor: kLValueDefault,
          thumbColor: kLValueSelected,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30,
          ),
          overlayColor: kDValueSelected.withAlpha(40),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), //0xFF0A0E21
        scaffoldBackgroundColor: Color(0xFF04040C),
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: kDValueSelected,
          inactiveTrackColor: kDValueDefault,
          thumbColor: kDValueSelected,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30,
          ),
          overlayColor: kDValueSelected.withAlpha(40),
        ),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InputPage(title: 'BMI CALCULATOR'),
    );
  }
}
