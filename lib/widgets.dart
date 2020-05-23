import 'package:flutter/material.dart';
import 'input_page.dart';

const unActiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);
const pinkcolor = Color(0xFFEB1555);

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild});
  Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
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
