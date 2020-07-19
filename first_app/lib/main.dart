import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = [
    {
      "questionText": "What is your favourite movie?",
      "answerList": ["Prestige", "Mr. Nobody", "Taxi Driver", "Fight Club"],
    },
    {
      "questionText": "What is your favourite band?",
      "answerList": [
        "Pink Floyd",
        "Led Zeppelin",
        "The Beatles",
        "The King Crimson"
      ],
    },
    {
      "questionText": "What is your favourite TV show",
      "answerList": ["Mindhunter", "Westworld", "The Office", "Mr. Robot"],
    },
  ];

  void changeQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My first app"),
      ),
      body: questionIndex < questions.length
          ? Column(
              children: <Widget>[
                Question(questions[questionIndex]["questionText"]),
                ...(questions[questionIndex]["answerList"] as List<String>)
                    .map((answer) {
                  return Answer(changeQuestion, answer);
                }).toList()
              ],
            )
          : Center(
              child: Text("You did it!"),
            ),
    ));
  }
}
