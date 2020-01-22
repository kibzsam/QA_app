import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _setQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = ["question 1", "question 2", "question 3"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QA_app"),
        ),
        body: Column(children: <Widget>[
          Text(
            _questions[_questionIndex],
          ),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: _setQuestion,
          ),
          RaisedButton(
            child: Text('Answer2'),
            onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
