import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questions;

  Questions(this.questions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questions,
        style: TextStyle(
          fontSize: 36,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
