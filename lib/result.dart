import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 15) {
      resultText = "You are awesome";
    } else if (resultScore >= 10) {
      resultText = "Pretty likable!";
    } else if (resultScore >= 5) {
      resultText = "You are Strange?!";
    } else {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text("Restart Quiz!"),
          textColor: Colors.blue,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
