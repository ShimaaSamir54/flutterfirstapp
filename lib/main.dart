import 'package:firstapp/quiz.dart';
import 'package:flutter/material.dart';

import 'result.dart';

//Scaffold ==> create a basic screen

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _questionIndex = 0;
  var _totalScore  = 0;

  //This is a map not a string (key , value)
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 8}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Lion', 'score': 2},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Dog', 'score': 8}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Kevin', 'score': 3},
        {'text': 'Max', 'score': 3},
        {'text': 'John', 'score': 8},
        {'text': 'Bitter', 'score': 8}],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore =0 ;
    });
  }


  void _answerQuestion(int score) {
    //State is  the information of a StatefulWidget. Every StatefulWidget has a State Object.
    // This State Object keeps a track of the variables and functions that we define inside a StatefulWidget.
     _totalScore += score ;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var dummy = ['Hello'];
    dummy.add('Max');
    print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // if condition _questionIndex > questions.length in below we will found else
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore , _resetQuiz),
      ),
    );
  }
}
