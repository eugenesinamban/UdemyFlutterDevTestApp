import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String _answerText;
  final Function _callback;

  Answer(this._answerText, this._callback);

  @override
  
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        // textTheme: ButtonTextTheme.primary,
        textColor: Colors.white,
        child: Text(_answerText),
        onPressed: _callback,
        // onPressed: _answerQuestion,
      ),
    );
  }
}
