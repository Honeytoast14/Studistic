// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'question.dart';
import 'main.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text(
                'Level',
                style: TextStyle(
                    color: Color(0xFFF35F28),
                    fontSize: 24,
                    fontFamily: 'SpaceMono',
                    wordSpacing: 5.5),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(30.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(levelIndex: index),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(40, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFFFDC05A)),
                    ),
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: Color(0xFF3A393A),
                        fontSize: 20,
                        fontFamily: 'SpaceMono',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionTest extends StatefulWidget {
  const QuestionTest({super.key});

  @override
  State<QuestionTest> createState() => _QuestionTestState();
}

class _QuestionTestState extends State<QuestionTest> {
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
    );
  }
}
