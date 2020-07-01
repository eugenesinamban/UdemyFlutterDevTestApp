import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _questionIndex = 0;

  _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Udemy Test App"),
      ),
      body: Column(
        children: <Widget>[
          Text(""),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    );
  }
}
