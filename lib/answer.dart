import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //Function or VoidCallback means it pointer to a function
  //Final is a value is not change
  //Different between const and final 1- final is run time constant  , 2-const is a compile time constant
  final VoidCallback selectedHandler;

 final  String answer ;

  Answer(this.selectedHandler , this.answer);

  @override
  Widget build(BuildContext context) {
    // to center the text should put it inside Container
    //double.infinity to fit screen size and put it in the center
    //color is a utility class
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(answer),
            onPressed: selectedHandler)
    );

  }
}
