import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:iwipe/main.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'IWipe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/', // Specify the initial route
      routes: {
        '/': (context) => CertTestScreen(),
        //'/SignIn': (context) => SignIn(),
      },
    );
  }
}

class CertTestScreen extends StatelessWidget {
  const CertTestScreen({Key? key}) : super(key: key);
  static const String _title = 'IWipe';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add a MaterialApp here as well
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('IWipe'),
            backgroundColor: Color(0xffB8E28A),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'This is your certification quiz, to pass you must have a score of atleast 50% ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                ProgressIndicator(

                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Question 1: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Answer 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('answer 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Answer 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Next Question'),
                ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/IDSelectScreen');
                    },
                    child: const Text('Payment'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: const Text('Progress'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/IDSelectScreen');
                    },
                    child: const Text('Home'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: const Text('Notifications'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    child: const Text('Settings'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}