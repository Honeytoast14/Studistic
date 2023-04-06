// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class QuestionPage extends StatefulWidget {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  const QuestionPage({
    Key? key,
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  }) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  bool _isCorrectAnswerSelected = false;

  @override
  Widget build(BuildContext context) {
    if (_isCorrectAnswerSelected) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Success')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Success', style: TextStyle(fontSize: 24)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Next Level'),
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.question,
                textAlign: TextAlign.left,
                style: TextStyle(
                    height: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SpaceGrotesk',
                    color: Color(0xFFD9D9D9)),
              ),
            ),
            ...widget.answers.asMap().entries.map((entry) {
              int index = entry.key;
              String answer = entry.value;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFDC05A)),
                  onPressed: () {
                    if (index == widget.correctAnswerIndex) {
                      setState(() {
                        _isCorrectAnswerSelected = true;
                      });
                    }
                  },
                  child: Text(
                    answer,
                    style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      );
    }
  }
}

class Question {
  final String question;
  final List<String> answers;
  final int correctAnswerIndex;

  Question({
    required this.question,
    required this.answers,
    required this.correctAnswerIndex,
  });
}

List<Question> questions = [
  Question(
    question:
        "Situation: Tom and Adam are talking in the park.\nTom: Do you know David Copper?\nAdam: I recognize the name but I can't picture him. _________\nTom: He is very tall and he's got quite short brown hair. ",
    answers: [
      'What does he look like?',
      'What is he like?',
      'How is he like?',
      'What does he like?'
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question: 'Question for level 2',
    answers: ['Answer 1', 'Answer 2', 'Answer 3', 'Answer 4'],
    correctAnswerIndex: 1, // Replace with the correct answer index for level 2
  ),
];
