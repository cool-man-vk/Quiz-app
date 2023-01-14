import 'package:flutter/material.dart';

class Result extends StatelessWidget 
{
  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhrase{
    String? resultText;
    if(resultScore == 3)
    {
      resultText = "You answered all correct";
    }
    else if(resultScore == 2){
      resultText = "You answered 2 correct";
    }
    else if(resultScore == 1)
    {
      resultText = "You answered 1 correct";
    }
    else 
    {
      resultText = "Awww!! You are too bad...!";
    }
    return resultText;
  }

  Result(this.resultScore , this.resetHandler);
  @override 
  Widget build(BuildContext context) 
  {
    return Center (
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children : <Widget> 
                [
                  Text(
                    resultPhrase,
                    style: const TextStyle(
                        color:Colors.black ,
                        fontSize:32 ,
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(6),
                    child: ElevatedButton(
                      onPressed: resetHandler,
                      child : const Text('Reset Quiz'),
                    ),
                  )
                ]
              )
            

    );
  }
}