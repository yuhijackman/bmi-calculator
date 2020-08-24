import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const Color reusableCardColour = Color(0xFF1D1E33);
const Color inactiveReusableCardColour = Color(0xFF111328);
const Color bottomContainerColour = Color(0xFFEB1555);
const Color iconColour = Color(0xFF8D8E98);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      colour: selectedGender == Gender.male ? reusableCardColour : inactiveReusableCardColour,
                      cardChild: IconWidget(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE'
                      ),
                      tapped: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      }
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: selectedGender == Gender.female ? reusableCardColour : inactiveReusableCardColour,
                      cardChild: IconWidget(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE'
                      ),
                      tapped: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      }
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: reusableCardColour),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: reusableCardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: reusableCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}