import 'package:flutter/material.dart';
import 'package:quiz/result.dart';
import './quiz.dart';
// void main() {
//   runApp(App());
// }

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final _quesitons = const [
    {
      'questionText': 'What is your favourite color',
      'answers': [
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 2,
        },
        {
          'text': 'Blue',
          'score': 8,
        },
        {
          'text': 'Black',
          'score': 10,
        },
      ]
    },
    {
      'questionText': 'What is your favourite place',
      'answers': [
        {
          'text': 'Landscape',
          'score': 6,
        },
        {
          'text': 'Hillstation',
          'score': 2,
        },
        {
          'text': 'Lake',
          'score': 3,
        },
        {
          'text': 'jungle',
          'score': 10,
        },
      ]
    },
    {
      'questionText': 'What is your favourite programming language',
      'answers': [
        {
          'text': 'C#',
          'score': 9,
        },
        {
          'text': 'C++',
          'score': 10,
        },
        {
          'text': 'Python',
          'score': 4,
        },
        {
          'text': 'Javascript',
          'score': 6,
        },
        {
          'text': 'Dart',
          'score': 9,
        },
      ]
    },
    {
      'questionText': 'What is your favourite animal',
      'answers': [
        {
          'text': 'Cat',
          'score': 4,
        },
        {
          'text': 'Dog',
          'score': 2,
        },
        {
          'text': 'Parrot',
          'score': 8,
        },
        {
          'text': 'Snake',
          'score': 10,
        },
      ]
    }
  ];

  int _elemIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _elemIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _elemIndex = _elemIndex + 1;
    });
    if (_elemIndex < _quesitons.length) {
      print(_elemIndex);
      print(_totalScore);
    } else {
      print('No more Questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Basic App"),
          ),
          body: _elemIndex < _quesitons.length
              ? Quiz(
                  _quesitons,
                  _elemIndex,
                  _answerQuestion,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
