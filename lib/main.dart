// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
          // ElevatedButton(
          //   onPressed: () {
          //     // TODO: implement test button functionality
          //   },
          //   style: ButtonStyle(
          //       minimumSize: MaterialStateProperty.all<Size>(Size(150, 50)),
          //       backgroundColor:
          //           MaterialStateProperty.all<Color>(Color(0xFFD9D9D9)),
          //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //         RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8.0),
          //         ),
          //       )),
          //   child: Text(
          //     'Test',
          //     style: TextStyle(
          //         color: Color(0xFFF35F28),
          //         fontSize: 18,
          //         fontFamily: 'SpaceMono'),
          //   ),
          // ),
        ])));
  }
}

class LevelPage extends StatelessWidget {
  const LevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    print('Level ${index + 1} selected');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(Size(40, 40)),
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
    );
  }
}
