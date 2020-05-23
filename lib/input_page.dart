import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}



class _InputPageState extends State<InputPage> {
  Color malecardcolor =  unActiveCardColor;
  Color femalecardcolor = unActiveCardColor;

  void updateColor (int gender){
    if (gender == 1){
      if(malecardcolor == unActiveCardColor){
        malecardcolor = activeCardColor;
      }
      else{
        malecardcolor = unActiveCardColor;
      }
    } else{
      if(femalecardcolor == unActiveCardColor){
        femalecardcolor = activeCardColor;
      } else{
        femalecardcolor = unActiveCardColor;
      }
    }
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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      color: malecardcolor,
                      cardChild: buildContext(
                        text: "Male",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      color: femalecardcolor,
                      cardChild: buildContext(text: "Female",icon: FontAwesomeIcons.venus,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: unActiveCardColor,),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: unActiveCardColor,),
                ),
                Expanded(
                  child: ReusableCard(color: unActiveCardColor,),
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
