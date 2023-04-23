import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'container.dart';
class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({Key? key, required this.bmiResult,required this.interpretation, required this.resultText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text('YOUR RESULT', style: kTitleTextStyle),
          )),
          Expanded(
              flex: 5,
              child: Containerz(
                cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kresultTextStyle,),
                  Text(bmiResult,                    style: kBMITextStyle,

                  ),
                  Text(interpretation, style: kBodyTextStyle,
                  textAlign: TextAlign.center,),

                ],

              ),colour: kActiveContainerColor,)),
          GestureDetector(

            onTap: (){
             Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              child: Center(
                child: Text('RE-CALCULATE', style: kLargeBottomText,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
