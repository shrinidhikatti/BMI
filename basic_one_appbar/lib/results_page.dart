import 'package:basic_one_appbar/Reusable_container1.dart';
import 'package:basic_one_appbar/constatnt.dart';
import 'package:flutter/material.dart';

class resultspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: <Widget>[
            Expanded(
                child: Container(
              child: Text('YOUR RESULT',
              style:kTitleTextStyle,),
            )),
            Expanded(
              flex: 5,
              child: ReusableContainer1(colour: activeCardColour,
            cardChild: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Normal',
              style: kresultTextStyle,
              )
            ],              
            ),))
          ],
        ));
  }
}
