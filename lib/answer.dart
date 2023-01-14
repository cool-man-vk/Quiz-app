import 'package:flutter/material.dart';

class Answer extends StatelessWidget
{
    final VoidCallback selectHandler;
    final String answerText;

    Answer(this.selectHandler , this.answerText);
    @override 
    Widget build(BuildContext context) 
    {
        return Container(
          width:double.infinity,
          margin: const EdgeInsets.all(10),
          child:ElevatedButton(
            onPressed: selectHandler,
            child : Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(answerText),
            ),
            ),
        );
    }
}