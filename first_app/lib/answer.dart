import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function changeQuestion;
  final String answerText;

  Answer(this.changeQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: changeQuestion),
    );
  }
}
