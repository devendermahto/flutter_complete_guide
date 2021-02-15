import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Q.1 All India Harijan Sangha established in?',
        'answers': ['1930', '1931', '1932', '1933'],
      },
      {
        'questionText': 'Q.2 Mangal Pandey was a sepoy at?',
        'answers': [
          'Royal Gorkha Rifle',
          '34th Bengal Native Infantary',
          'Sikh Regiment',
          'None of above'
        ],
      },
      {
        'questionText': 'Q.3 First battle of Panipat was fought between?',
        'answers': [
          'Babur & Lodi',
          'Akbar & Hemu',
          'Mughal & British',
          'Akbar & Lodi'
        ],
      },
      {
        'questionText': 'Q.4 Second battle of Panipat was fought between?',
        'answers': [
          'Babur and Lodhi',
          'Akbar and Hemu',
          'Mughal and British',
          'Akbar and Lodhi'
        ],
      },
      {
        'questionText': 'Q.5 Who was the founder of Madras?',
        'answers': [
          'Francis Day',
          'Lord Dalhousie',
          'Sir John Child',
          'Robert Clive'
        ],
      },
      {
        'questionText': 'Q.6 Who is writer of \"Geet Govind\"',
        'answers': ['Kabir', 'Kalidas', 'Ravidas', 'Jayadev'],
      },
      {
        'questionText': 'Q.7 Battle of Buxar was fought in?',
        'answers': ['1762', '1764', '1768', '1772'],
      },
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
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
