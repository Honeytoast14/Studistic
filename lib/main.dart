// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'audio_service.dart';
import 'level.dart';
import 'test.dart';
import 'setting.dart';

import '../difficulty.dart';
import 'choose_difficulty.dart'; // Import the ChooseDifficultyPage
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  String? chosenDifficulty = prefs.getString('difficulty');

  runApp(MaterialApp(
    home:
        chosenDifficulty == null ? ChooseDifficultyPage() : DifficultyWrapper(),
  ));
}

class DifficultyWrapper extends StatelessWidget {
  const DifficultyWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<String?>(
        future: _getSelectedDifficulty(),
        builder: (context, AsyncSnapshot<String?> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final selectedDifficulty = snapshot.data;

            if (selectedDifficulty != null) {
              switch (selectedDifficulty) {
                case Difficulty.novice:
                  return HomePage();
                // Add cases for other difficulty levels if needed
                default:
                  return ChooseDifficultyPage();
              }
            } else {
              // Handle the case when difficulty is not selected
              return ChooseDifficultyPage();
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Future<String?> _getSelectedDifficulty() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('difficulty');
  }
}

class MainApp extends StatelessWidget {
  final AudioService audioService = AudioService();

  MainApp({Key? key}) : super(key: key) {
    audioService.playBackgroundMusic();
  }

  @override
  Widget build(BuildContext context) {
    audioService.playBackgroundMusic();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Stu',
                  style: TextStyle(
                    color: Color(0xFFF35F28),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5,
                  ),
                ),
                Text(
                  'di',
                  style: TextStyle(
                    color: Color(0xFFD9D9D9),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5,
                  ),
                ),
                Text(
                  'st',
                  style: TextStyle(
                    color: Color(0xFFF5B446),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5,
                  ),
                ),
                Text(
                  'ic',
                  style: TextStyle(
                    color: Color(0xFF3A393A),
                    fontSize: 40,
                    fontFamily: 'SpaceMono',
                    letterSpacing: 5.5,
                  ),
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
                ),
              ),
              child: Text(
                'Test',
                style: TextStyle(
                  color: Color(0xFFF35F28),
                  fontSize: 18,
                  fontFamily: 'SpaceMono',
                ),
              ),
            ),
            // Display selected difficulty
            FutureBuilder<String?>(
              future: _getSelectedDifficulty(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final selectedDifficulty = snapshot.data;

                  if (selectedDifficulty != null) {
                    return Text(
                      'Difficulty: $selectedDifficulty',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'SpaceMono',
                      ),
                    );
                  } else {
                    // Handle the case when difficulty is not selected
                    return Container();
                  }
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> _getSelectedDifficulty() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('difficulty');
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionTest()),
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
                    fontFamily: 'SpaceMono'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
