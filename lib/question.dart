// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'level.dart';
import 'question_data.dart';

class QuestionPage extends StatefulWidget {
  final int levelIndex;

  const QuestionPage({Key? key, required this.levelIndex}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final AudioCache _audioCache = AudioCache();
  bool _isCorrectAnswerSelected = false;
  int _wrongAttempts = 0;
  List<Icon> _heartIcons = [
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
    Icon(Icons.favorite, color: Colors.red),
  ];

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
                MaterialPageRoute(builder: (context) => LevelPage()),
              );
            },
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelPage()),
              );
            },
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
                  MaterialPageRoute(builder: (context) => LevelPage()),
                );
              },
            ),
            actions: _heartIcons, // Add heart icons here
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            // Added SingleChildScrollView
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
                            _audioCache.play('sounds/correct.mp3');
                            _audioCache.play('sounds/success.mp3');
                            setState(() {
                              _isCorrectAnswerSelected = true;
                            });
                          } else {
                            _audioCache.play('sounds/wrong.mp3');
                            setState(() {
                              _wrongAttempts++;
                              if (_wrongAttempts <= 3) {
                                _heartIcons.removeLast(); // Remove a heart icon
                              }
                              if (_wrongAttempts >= 3) {
                                _wrongAttempts =
                                    0; // reset the wrong attempts count
                                _heartIcons = [
                                  // Reset heart icons
                                  Icon(Icons.favorite, color: Colors.red),
                                  Icon(Icons.favorite, color: Colors.red),
                                  Icon(Icons.favorite, color: Colors.red),
                                ];
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RestartPage(
                                          levelIndex: widget.levelIndex)),
                                );
                              }
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
                ]),
          ));
    }
  }
}

class RestartPage extends StatefulWidget {
  final int levelIndex;

  const RestartPage({Key? key, required this.levelIndex}) : super(key: key);

  @override
  _RestartPageState createState() => _RestartPageState();
}

class _RestartPageState extends State<RestartPage> {
  final AudioCache _audioCache = AudioCache();

  @override
  void initState() {
    super.initState();
    _audioCache.play('sounds/failed.mp3');
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
              MaterialPageRoute(builder: (context) => LevelPage()),
            );
          },
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                "Don't give up.",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SpaceGrotesk',
                  color: Color(0xFFF35F28),
                ),
              ),
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuestionPage(
                          levelIndex: widget
                              .levelIndex)), // changed to widget.levelIndex
                );
              },
              child: Text(
                'Restart',
                style: TextStyle(
                  fontSize: 24,
                  wordSpacing: 5.5,
                  fontFamily: 'SpaceMono',
                  color: Color(0xFFF35F28),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
