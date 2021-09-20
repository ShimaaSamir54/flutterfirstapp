import 'package:flutter/material.dart';


//docs https://flutter.dev/docs
class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // to center the text should put it inside Container
    //double.infinity to fit screen size and put it in the center
    //all is an object or constructor with special configuration /special default property value
    return Container(width : double.infinity,
        margin:EdgeInsets.all(16),child :Text(questionText,
        style: TextStyle(fontSize: 20), textAlign: TextAlign.center));
  }
}
