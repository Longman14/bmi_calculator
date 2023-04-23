import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  final int age;

  double bmi ;
  CalculatorBrain ({required this.weight,required this.height, required this.age, this.bmi=0 });

  String calculateBMI(){
     bmi = weight/ pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResults(){
    if (bmi >= 25){
      return 'You are overweight';
    }else if(bmi >18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (bmi>= 25 ){
      return 'You are $age years old. You have a higher than normal body weight. Try to exercise more';
    }else if(bmi >18.5){
      return 'You have a normal body weight. Good Job!';
    }else if(bmi > 0) {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
    else {
      return 'you have entered a wrong value';
    }
  }

}