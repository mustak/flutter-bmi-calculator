import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/screens/input_page.dart';

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
        scaffoldBackgroundColor: Color(0xFFF0F4FD),
        primaryColor: Color(0xFF5A55CA),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21), //0xFF0A0E21
        scaffoldBackgroundColor: Color(0xFF04040C),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InputPage(title: 'BMI CALCULATOR'),
    );
  }
}
