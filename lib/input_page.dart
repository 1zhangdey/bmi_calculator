import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = unActiveCardColor;
  Color femalecardcolor = unActiveCardColor;

  void updateColor(Gender gender) {
    gender == Gender.male
        ? malecardcolor = activeCardColor
        : malecardcolor = unActiveCardColor;
    gender == Gender.female
        ? femalecardcolor = activeCardColor
        : femalecardcolor = unActiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    color: malecardcolor,
                    cardChild: buildContext(
                      text: "Male",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(
                        () {
                          updateColor(Gender.female);
                        },
                      );
                    },
                    color: femalecardcolor,
                    cardChild: buildContext(
                      text: "Female",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: unActiveCardColor,
              cardChild: Column(
                children: [
                  Text(
                    "Height",
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: unActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: unActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              color: pinkcolor,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: 80),
        ],
      ),
    );
  }
}
