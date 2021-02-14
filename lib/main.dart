import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState LOL
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Q.1 All India Harijan Sangha established in?',
      'Q.2 Mangal Pandey was a sepoy at?',
      'Q.3 First battle of Panipat was fought between?',
      'Q.4 Second battle of Panipat was fought between?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'History Exam Quiz',
          ),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            Row(
              children: [
                RaisedButton(
                  child: Text('RGR'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('34th Bengal'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('Sikh'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('None'),
                  onPressed: answerQuestion,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
