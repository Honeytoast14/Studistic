// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'englishLevel/question_data.dart';
import 'dart:math';
import 'main.dart';

class QuestionTest extends StatefulWidget {
  const QuestionTest({Key? key}) : super(key: key);

  @override
  _QuestionTestState createState() => _QuestionTestState();
}

class _QuestionTestState extends State<QuestionTest> {
  Question? currentQuestion;
  int _timeLeft = 60;
  bool _answeredCorrectly = false;
  final Set<int> _answeredQuestions = {};
  final Map<int, int> _userAnswers = {};

  @override
  void initState() {
    super.initState();
    _generateRandomQuestion();
    _startTimer();
  }

  void _generateRandomQuestion() {
    setState(() {
      final random = Random();
      final unansweredQuestions = questions
          .asMap()
          .keys
          .where((index) => !_answeredQuestions.contains(index))
          .toList();
      if (unansweredQuestions.isEmpty) {
        currentQuestion = null;
      } else {
        final questionIndex = random.nextInt(unansweredQuestions.length);
        final index = unansweredQuestions[questionIndex];
        currentQuestion = questions[index];
        _answeredCorrectly = false;
      }
    });
  }

  void _startTimer() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _timeLeft--;
      });

      if (_timeLeft > 0 && currentQuestion != null) {
        _startTimer();
      } else {
        _showResultDialog();
      }
    });
  }

  void _onAnswerPressed(int index) {
    setState(() {
      _answeredQuestions.add(questions.indexOf(currentQuestion!));
      _userAnswers[questions.indexOf(currentQuestion!)] = index;
      _answeredCorrectly = index == currentQuestion!.correctAnswerIndex;
    });
    _generateRandomQuestion();
  }

  void _showResultDialog() {
    final numCorrect = _answeredQuestions.where((index) {
      final question = questions[index];
      return question.correctAnswerIndex == _userAnswers[index];
    }).length;

    final numWrong = _answeredQuestions.length - numCorrect;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultPage(numCorrect, numWrong)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainApp()),
              );
            },
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            // Wrap the main Column with SingleChildScrollView
            child: Center(
          child: currentQuestion == null
              ? CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        currentQuestion!.question,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SpaceGrotesk',
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ...currentQuestion!.answers.asMap().entries.map((entry) {
                      final index = entry.key;
                      final answer = entry.value;
                      return ElevatedButton(
                        onPressed: _answeredCorrectly
                            ? null
                            : () => _onAnswerPressed(index),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFDC05A),
                        ),
                        child: Text(
                          answer,
                          style: TextStyle(
                            fontFamily: 'SpaceGrotesk',
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                    SizedBox(height: 20),
                    Text(
                      '$_timeLeft seconds left',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SpaceGrotesk',
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                  ],
                ),
        )));
  }
}

class ResultPage extends StatelessWidget {
  final int numCorrect;
  final int numWrong;

  const ResultPage(this.numCorrect, this.numWrong, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainApp()),
            );
          },
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Correct: $numCorrect',
              style: TextStyle(
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'SpaceGrotesk',
                color: Color(0xFFD9D9D9),
              ),
            ),
            Text(
              'Incorrect: $numWrong',
              style: TextStyle(
                height: 1.5,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'SpaceGrotesk',
                color: Color(0xFFD9D9D9),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainApp()),
                );
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFD9D9D9)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: Text(
                'Back to main page',
                style: TextStyle(
                    color: Color(0xFFF35F28),
                    fontSize: 18,
                    fontFamily: 'SpaceMono'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
