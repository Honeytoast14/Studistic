// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../levelmap/common_level.dart';
import '../englishLevel/common_question.dart';
import 'package:audioplayers/audioplayers.dart';

class QuestionPage extends StatefulWidget {
  final int levelIndex;
  final AudioCache _audioCache = AudioCache();

  int _wrongAttempts = 0;
  List<Icon> _heartIcons = [
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
  ];
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LevelPage(difficulty: 'common')),
              );
              actions:
              _heartIcons; // Add heart icons here
            },
            backgroundColor: Colors.black,
          ),
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
                      builder: (context) => LevelPage(difficulty: 'common'),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LevelPage(difficulty: 'common')),
              );
            },
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the row content
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
                    SizedBox(width: 8),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFFD9D9D9)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (isLastLevel) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LevelPage(difficulty: 'common'),
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
                    isLastLevel ? 'Back To Level' : 'Next Level',
                    style: TextStyle(
                      color: Color(0xFFF35F28),
                      fontFamily: 'SpaceMono',
                      wordSpacing: 5.5,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LevelPage(difficulty: 'common')),
              );
            },
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Level ${widget.levelIndex + 1}', // Add level number text here
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    wordSpacing: 5.5,
                    fontFamily: 'SpaceMono',
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
              // Add your ScrollView content here
              // For example, you can add another list of widgets or any other content
              // that you want to be scrollable.
            ],
          ),
        ),
      );
    }
  }
}
