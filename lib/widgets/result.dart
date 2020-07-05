import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (score < 100) {
      resultText = "You're lame";
    } else if (score < 200) {
      resultText = "You're pretty cool!";
    } else {
      resultText = "You're awesome, I like you!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text("Restart Quiz"), onPressed: resetQuiz,)
        ],
      ),
    );
  }
}
