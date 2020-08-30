import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function tapped;
  final String title;
  BottomButton({this.tapped, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:tapped,
      child: Container(
        child: Center(
            child: Text(title, style: kLargeButtonTextStyle)
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
      ),
    );
  }
}