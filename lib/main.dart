import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEB1555);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
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
      home: InputPage(title: 'BMI Calculator'),
    );
  }
}

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
                  ),
                ),
                ReusableCard(
                  colour: kActiveCardColor,
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
              color: kBottomContainerColor,
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

class IconGender extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const IconGender(
      {@required this.label,
      @required this.icon,
      this.color = const Color(0xFF8D8E98)});

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
            color: this.color,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget child;

  ReusableCard({this.colour = kInactiveCardColor, this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: this.child,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
