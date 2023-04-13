// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'level.dart';
import 'test.dart';

void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Stu',
                style: TextStyle(
                    color: Color(0xFFF35F28),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5),
              ),
              Text(
                'di',
                style: TextStyle(
                    color: Color(0xFFD9D9D9),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5),
              ),
              Text(
                'st',
                style: TextStyle(
                    color: Color(0xFFF5B446),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5),
              ),
              Text(
                'ic',
                style: TextStyle(
                    color: Color(0xFF3A393A),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5),
              ),
            ],
          ),
          SizedBox(
            height: 130,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LevelPage()),
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
              'Start',
              style: TextStyle(
                color: Color(0xFFF35F28),
                fontSize: 18,
                fontFamily: 'SpaceMono',
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestPage()),
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
                )),
            child: Text(
              'Test',
              style: TextStyle(
                  color: Color(0xFFF35F28),
                  fontSize: 18,
                  fontFamily: 'SpaceMono'),
            ),
          ),
        ])));
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test',
              style: TextStyle(
                  color: Color(0xFFF35F28),
                  fontSize: 24,
                  fontFamily: 'SpaceMono',
                  wordSpacing: 5.5),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // TODO: implement start button functionality in TestPage
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
                'Start',
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
