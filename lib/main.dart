import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(BMICalculator());
class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData.dark().copyWith(

          // primaryColor: Color(0xff0A0E21),
            scaffoldBackgroundColor: Color(0xff0A0E21),
            primaryColor: Colors.purple,
            textTheme: TextTheme(
                bodyText2: TextStyle(
                    color: Colors.white
                )
            ),
            appBarTheme: AppBarTheme(
                color: Color(0xff0A0E21)
            )

      ),
      home: InputPage(),
    );
  }
}





