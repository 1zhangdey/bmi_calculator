import 'package:flutter/material.dart';
import "constants.dart";


enum Gender{
  male,
  female,
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color, this.cardChild, this.onPressed});
  final Color color;
  final Widget cardChild;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
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
            style: labelTextStyle
            ),
          ),
      ],
    );
  }
}
