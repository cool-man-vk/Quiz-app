import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
   static const _questions = [ 
      {
        'questionText':'Who wrote Wings of Fire?',
        'answers':[
            {'text':'Abdul Kalam','score':1},
            {'text':'Bharathiar','score':0},
            {'text':'Vivekananda' , 'score':0},
            {'text':'Ramakrishna Paramahamsa' , 'score':0}
          ]
      },
      {
        'questionText':'Who is called the \'Father of our Nation\'?',
        'answers':[
            {'text':'Vivekananda','score':0},
            {'text':'Lokmanya Tilak','score':0},
            {'text':'Gandhiji','score':1},
            {'text':'Nethaji','score':0}
          ]
      },
      {
        'questionText':'Who is the President of India now?',
        'answers':[
            {'text':'Narendra Modi','score':0},
            {'text':'Adithyanath','score':0},
            {'text':'Rajiv Gandhi','score':0},
            {'text':'Ramnath Govind','score':1},
        ]
      },
    ];
    var _questionIndex = 0;
    var _totalScore = 0;


    void _answerQuestion(int score) 
    {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      if (_questionIndex < _questions.length)
      {
          print('We have more questions');
      }
      else 
      {
        print("No questions anymore ....");
      }
    }

    void _resetQuiz() 
    {
      setState((){
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

  @override //decorator
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
        // if condition true ->
            ? Quiz(
              answerQuestion: _answerQuestion, 
              questions: _questions, 
              questionIndex: _questionIndex
            )
        // else part
            : Result(
              _totalScore, 
              _resetQuiz
            ) 
          ),
        );
  }
}