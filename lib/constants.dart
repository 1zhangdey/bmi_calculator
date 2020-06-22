import 'package:flutter/material.dart';
import 'widgets.dart';

const unActiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);
const pinkcolor = Color(0xFFEB1555);
const labelTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
  fontSize: 18,
);

const numberTextStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 50,
);

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