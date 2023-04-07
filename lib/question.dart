// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'level.dart';

class QuestionPage extends StatefulWidget {
  final int levelIndex;

  const QuestionPage({Key? key, required this.levelIndex}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  bool _isCorrectAnswerSelected = false;

  @override
  Widget build(BuildContext context) {
    if (widget.levelIndex >= questions.length) {
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No more levels available.', style: TextStyle(fontSize: 24)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LevelPage(),
                    ),
                  );
                },
                child: Text('Back To Level Page'),
              ),
            ],
          ),
        ),
      );
    }
    final question = questions[widget.levelIndex];

    if (_isCorrectAnswerSelected) {
      bool isLastLevel = widget.levelIndex == questions.length - 1;

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center the row content
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Success',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'SpaceMono',
                      wordSpacing: 8,
                      color: Color(0xFFF5B446),
                    ),
                  ),
                  Icon(
                    Icons.thumb_up_off_alt,
                    size: 30,
                    color: Color(0xFFF5B446),
                  ),
                  SizedBox(
                      width: 8), // Add some space between the icon and the text
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (isLastLevel) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LevelPage(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionPage(
                          levelIndex: widget.levelIndex + 1,
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  isLastLevel ? 'Go to Level Page' : 'Next Level',
                ),
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
              padding: const EdgeInsets.all(14.0),
              child: Text(
                'Level ${widget.levelIndex + 1}', // Add level number text here
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SpaceGrotesk',
                  color: Color(0xFFF35F28),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
                question.question,
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
            ...question.answers.asMap().entries.map((entry) {
              int index = entry.key;
              String answer = entry.value;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFDC05A)),
                  onPressed: () {
                    if (index == question.correctAnswerIndex) {
                      setState(() {
                        _isCorrectAnswerSelected = true;
                      });
                    }
                  },
                  child: Text(
                    answer,
                    style: TextStyle(
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 18,
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
  //one
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
  //two
  Question(
    question:
        "Situation: In the office\nAddy: Would you mind if I switch on the air conditioner?\nTim: _________\nAddy: Thank you",
    answers: [
      "No, go ahead.",
      'Oh! What a shame.',
      "Yes, but I don't like it.",
      'Mind your own business.'
    ],
    correctAnswerIndex: 0,
  ),

  //three
  Question(
    question:
        "Situation: Henry is talking to Dan.\nHenry: When did you last go to a football match?\nDan: __________\nHenry: What did you see?\nDan: I saw Chelsea against Liverpool.",
    answers: [
      "I saw my friends last week.",
      'I went there three weeks ago.',
      "I'm a big fan of a football match.",
      'I have never been to a football match.'
    ],
    correctAnswerIndex: 1,
  ),
  //four
  Question(
    question:
        "Situation: At Peter's house \nPeter: Hi Jeff. Come in. Was it difficult to find my place?\nJeff: __________ You gave me really good directions.",
    answers: [
      "Where was it?",
      'How come?',
      "Not at all.",
      'Yes, it was difficult.'
    ],
    correctAnswerIndex: 2,
  ),
  //five
  Question(
    question:
        "Situation: At home, Adam is talking to Peter.\nAdam: _________\nPeter: I suggest using groundnut oil for cooking steaks. It has a mild flavor and can withstand very high temperatures without burning.",
    answers: [
      "How do you like your steak?",
      'What is the best cooking time for steak?',
      "Could you recommend side dishes for steak?",
      'Can you tell me how to cook the perfect steak?'
    ],
    correctAnswerIndex: 3,
  ),
  //six
  Question(
    question:
        "Situation: In the kitchen\nMom: Betty, you should learn how to make creamy corn salad. It is very easy. Only 5 ingredients are needed.\nBetty: How can I make it, Mom? I want a quick and easy recipe.\nMom: First, mix whole kernel corn, diced tomato, green onions and mayonnaise in a small bowl.\n___________ Finally, cover and refrigerate until ready to serve.\nBetty: Oh! That’s easy. ",
    answers: [
      "Season with the basil at last.",
      'Then add salt and pepper.',
      "Serve with chips or over grilled tuna.",
      'After that, spread on softened cream cheese'
    ],
    correctAnswerIndex: 1,
  ),
  //seven
  Question(
    question:
        "Situation: Tom and John are at a convenience store.\nTom: ________\nJohn: Um, I'd like to buy a bar of soap. ",
    answers: [
      "Where can you buy a bar of soap?",
      "What do you want to order?",
      "What would you like to buy?",
      "Why do you want to buy a bar of soap?"
    ],
    correctAnswerIndex: 2,
  ),
  //eight
  Question(
    question:
        "Situation: A tourist is asking Kate the direction.\nA tourist: Excuse me, I'm sorry to trouble you, but could you tell me ________?\nKate: Yes, no problem. Walking straight ahead, after you pass the library you have to turn left. Take your first right and it's across from the bus station.\nA tourist: Thank you so much!",
    answers: [
      "which bus I can take",
      "how I can take the bus",
      "where the bus station is",
      "how I can get to the train station"
    ],
    correctAnswerIndex: 3,
  ),
];
