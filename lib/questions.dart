import 'package:flutter/material.dart';
import './questions.dart';


class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container (
      width:double.infinity,
      margin:EdgeInsets.all(8),
      child:Text(
            questionText , 
            style : const TextStyle(
              fontSize:20 ,
              fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
    ));
  }
}