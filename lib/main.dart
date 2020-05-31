import 'package:flutter/material.dart';
import 'package:flutterapp/quiz.dart';
import 'package:flutterapp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _questions = [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {"text": "Blue", "score": 5},
        {"text": "Orange", "score": 3},
        {"text": "Black", "score": 5}
      ]
    },
    {
      "questionText": "What is your favorite Cartoon?",
      "answers": [
        {"text": "Cony", "score": 5},
        {"text": "Brown", "score": 4},
        {"text": "Cony & Brown", "score": 5},
        {"text": "Tom", "score": 4},
        {"text": "Jerry", "score": 3}
      ]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": [
        {"text": "Elephant", "score": 5},
        {"text": "Tiger", "score": 4},
        {"text": "Dog", "score": 4}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Welcome to quiz")),
      body: _questions.length > _questionIndex
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore),
    ));
  }
}
