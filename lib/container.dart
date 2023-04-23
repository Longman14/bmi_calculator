import 'package:flutter/material.dart';
import 'constants.dart';

class Containerz extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  // final Function onPress;
  const Containerz({Key? key, required this.colour, required this.cardChild,
    // required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
        // width: double.infinity,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: cardChild,

    );
  }
}

class GenderCardChild extends StatelessWidget {
  final String gender;
  final IconData genderIcon;
  const GenderCardChild({Key? key,
    required this.gender, required this.genderIcon}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(genderIcon, size: 80,),
        const SizedBox(height: 15.0,),
        Text(gender, style: kLabelTextStyle,)
      ],
    );
  }
}
