import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

const darkbluecolor = 0xFF1D1E33;
const pinkcolor = 0xFFEB1555;

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



class buildContext extends StatelessWidget {
  buildContext({this.text, this.icon});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF8D8E98),
            ),
          ),
        ),
      ],
    );
  }
}
