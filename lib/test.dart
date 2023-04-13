import 'dart:math';
import 'package:flutter/material.dart';
import 'question_data.dart';

class TestQuizPage extends StatefulWidget {
  const TestQuizPage({Key? key}) : super(key: key);

  @override
  _TestQuizPageState createState() => _TestQuizPageState();
}

class _TestQuizPageState extends State<TestQuizPage> {
  late List<Question> questions;
  late Question currentQuestion;
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    questions = _getQuestions();
    currentQuestion = _getRandomQuestion();
  }

  List<Question> _getQuestions() {
    return [
      Question(
        question: 'What is the capital of France?',
        answers: ['Paris', 'London', 'Berlin', 'Rome'],
        correctAnswerIndex: 0,
      ),
      // Add more questions here
    ];
  }

  Question _getRandomQuestion() {
    return questions[random.nextInt(questions.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Test'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(
                  color: Colors.white, fontSize: 24, fontFamily: 'SpaceMono'),
            ),
            // Display question answers as buttons
          ],
        ),
      ),
    );
  }
}
