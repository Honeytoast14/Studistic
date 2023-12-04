import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';
import 'difficulty.dart';

class ChooseDifficultyPage extends StatelessWidget {
  const ChooseDifficultyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Choose Difficulty'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _setAndNavigate(context, Difficulty.novice),
              child: Text('Novice'),
            ),
            ElevatedButton(
              onPressed: () => _setAndNavigate(context, Difficulty.common),
              child: Text('Common'),
            ),
            ElevatedButton(
              onPressed: () => _setAndNavigate(context, Difficulty.expert),
              child: Text('Expert'),
            ),
            ElevatedButton(
              onPressed: () => _setAndNavigate(context, Difficulty.master),
              child: Text('Master'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _setAndNavigate(BuildContext context, String difficulty) async {
    // Save the selected difficulty to shared preferences
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('difficulty', difficulty);

    // Navigate to the main app page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
