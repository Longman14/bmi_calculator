import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';



enum Gender {
  male, female;
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

    Gender? selectedGender;
    int height = 180;
    int weight  = 50;
    int age = 15;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),

      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedGender = Gender.male;


                  });
                },
                child: Containerz(colour: selectedGender == Gender.male ? kActiveContainerColor: kInactiveContainerColor,
                  cardChild: GenderCardChild(gender: 'MALE', genderIcon: FontAwesomeIcons.mars,
                ),
                  // onPress: (){
                  // setState(() {
                  //   // print('Male was selected');
                  //   selectedGender = Gender.male;
                  // });
                  // },
                ),
              ),
              ),
    Expanded(child: GestureDetector(
      onTap: (){
        setState(() {
          selectedGender = Gender.female;

        });

      },

      child: Containerz(colour: selectedGender == Gender.female ? kActiveContainerColor: kInactiveContainerColor,
      cardChild: GenderCardChild(gender: 'FEMALE', genderIcon: FontAwesomeIcons.venus
      ),
      //
      ),
    ),
    ),
            ],
          )
    //     print('FeMale was selected');
    //   setState(() {
    //     selectedGender = Gender.female;
    //   });
    //   },,
    ),




          Expanded(child:Containerz(colour: kActiveContainerColor,
    cardChild: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Text('HEIGHT', style: kLabelTextStyle),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(height.toString(), style: kHeightTextStyle),
          Text('cm', style: kLabelTextStyle,)
        ],
      ),
      SliderTheme(
        data: SliderTheme.of(context).copyWith(
          thumbColor: Color(0xFFEB1555),
          activeTrackColor: Colors.white,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0 ),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          overlayColor: Color(0x29EB1555),
        ),
        child: Slider(value: height.toDouble(),
            min: 120.0,
            max: 220.0,
            inactiveColor: Colors.grey[600],
            onChanged: (double newValue){
              setState(() {
                height = newValue.round();
              });
            }

        ),
      )

    ],
    ),
            // onPress: (){},
    ),
          ),


          Expanded(child: Row(
            children: [
              Expanded(child: Containerz(colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('WEIGHT', style: kLabelTextStyle,),
                  Text(weight.toString(), style: kHeightTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            weight--;
                          });
                        },
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Color(0xFF4C4F5E),
                          ),
                          child: Icon(FontAwesomeIcons.minus),
                        ),
                      ),

                      SizedBox(width: 6.0,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            weight++;
                          });
                        },
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Color(0xFF4C4F5E),
                          ),
                          child: Icon(FontAwesomeIcons.plus),
                        ),
                      ),
                    ],
                  ),

                  
                ],
              ),
              // onPress: (){},
              )
              ),
              Expanded(child: Containerz(colour: kActiveContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AGE', style: kLabelTextStyle,),
                  Text(age.toString(), style: kHeightTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            age--;
                          });
                        },
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56),
                            color: Color(0xFF4C4F5E),
                          ),
                          child: Icon(FontAwesomeIcons.minus),
                        ),
                      ),
                      SizedBox(width: 6.0,),
              GestureDetector(
                     onTap: (){
                setState(() {
                     age++;
                          });
                        },
              child: Container(
              width: 56,
                 height: 56,
              decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(56),
                      color: Color(0xFF4C4F5E),
                      ),
                   child: Icon(FontAwesomeIcons.plus),
                  ),
                  ),

                    ],
                  )
                ],
              ),
              // onPress: (){},
              )
              )
            ],
          ),
          ),

          GestureDetector(
            onTap: (){

              CalculatorBrain calc  = CalculatorBrain(weight: weight, height: height, age: age);

              calc.calculateBMI();
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(bmiResult: calc.calculateBMI(),
                  interpretation: calc.getInterpretation(), resultText: calc.getResults(),)));
            },
            child: Container(
              child: Center(
                child: Text('CALCULATE', style: kLargeBottomText),
              ),
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
            ),
          )
        ],
      )

    );
  }
}




