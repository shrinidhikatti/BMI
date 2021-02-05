import 'package:basic_one_appbar/Reusable_container1.dart';
import 'package:basic_one_appbar/bottom_button.dart';
import 'package:basic_one_appbar/constatnt.dart';
import 'package:flutter/material.dart';

class resultspage extends StatelessWidget {
  resultspage({
      @required this.interpretation,
      @required this.bmiResult,
      @required this.resultText
      });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.center,
            child: Text(
              'YOUR RESULT',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableContainer1(
              colour: activeCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                   style: kBMITextStyle
                   ),
                  Text(
                    interpretation,
                  textAlign: TextAlign.center, 
                  style: kbodyTextStyle
                  ),

                ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
