import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  final Function() resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8)
      resultText = 'u r 8';
    else if (totalScore <= 12)
      resultText = 'u r 12';
    else if (totalScore <= 16)
      resultText = 'u r 16';
    else
      resultText = 'Bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        onPressed: resetQuiz,
        child: Text('Restart App'),
        textColor: Colors.blue,
      )
    ]));
  }
}
