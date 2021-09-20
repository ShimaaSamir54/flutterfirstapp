import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final  List<Map<String, Object>> questions ;
  final int questionIndex  ;

  var answerQuestion;
  Quiz(@required this.answerQuestion, this.questions,  this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        //... this 3 dots operator means it takes the value of a list and pull them individual inside the list
        // (not add a list in a list but the value of the list in a list )

        ...(questions[questionIndex]['answers'] as List<Map<String , Object>>)
            .map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']as String);
        }).toList()
      ],
    );
  }
}
