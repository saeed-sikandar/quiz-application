import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function() resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    var resultText = "You did it";
    if (totalScore <= 10)
      resultText = "You are awsome and great";
    else if (totalScore <= 20)
      resultText = "You are pretty good";
    else if (totalScore <= 30)
      resultText = "You are  good";
    else if (totalScore <= 40)
      resultText = "You are .... ...  strange!";
    else if (totalScore <= 50) resultText = "You are very Bad!";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            textColor: Colors.blueAccent,
            child: Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
