import 'package:flutter/material.dart';
import '../widgets/quiz.dart';
import '../widgets/result.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _questionIndex = 0;
  var _currentScore = 0;

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _currentScore = 0;
    });
  }

  _answerQuestion(int score) {
    setState(() {
      _currentScore += score;
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite food?',
        'answer': [
          {'text': 'Hamburger', 'score': 66},
          {'text': 'Sushi', 'score': 99},
          {'text': 'Pizza', 'score': 50},
          {'text': 'Steak', 'score': 89},
        ],
      },
      {
        'questionText': 'What\'s your favorite color?',
        'answer': [
          {'text': 'White', 'score': 50},
          {'text': 'Black', 'score': 99},
          {'text': 'Red', 'score': 89},
          {'text': 'Blue', 'score': 65},
        ],
      },
      {
        'questionText': 'What\'s your favorite movie?',
        'answer': [
          {'text': 'I Am Sam', 'score': 75},
          {'text': 'Ocean\'s 11', 'score': 99},
          {'text': 'The Godfather', 'score': 99},
          {'text': 'The Life of Pi', 'score': 50},
        ],
      },
    ];

    var hasQuestionsLeft = _questionIndex < _questions.length;

    return Scaffold(
      appBar: AppBar(
        title: Text("Udemy Test App"),
      ),
      body: hasQuestionsLeft
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              answerQuestion: _answerQuestion)
          : Result(_currentScore, _resetQuiz),
    );
  }
}
