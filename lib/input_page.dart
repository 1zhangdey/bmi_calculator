import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'package:flutter/material.dart';

const darkbluecolor = 0xFF1D1E33;
const pinkcolor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    cardChild: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Container(
              color: Color(pinkcolor),
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: 80),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild});
  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(darkbluecolor),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
