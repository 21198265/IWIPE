import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:iwipe/Templates/MainBottomNavBar.dart';
import 'package:iwipe/main.dart';
import 'package:percent_indicator/percent_indicator.dart';


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
                    'Final Evaluation',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'You Will have 60 minutes to complete the exam, there are 50 multiple-choice questions worth 1 mark each you must score 98% or higher to pass',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
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
                MainBottomNavBar(),
                // IconButton( // payment button
                //   iconSize: 35,
                //   icon: const Icon(Icons.wallet),
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/paymentScreen');
                //   },
                // ),
                // IconButton( // progress button
                //   iconSize: 35,
                //   icon: const Icon(Icons.bar_chart),
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/progressScreen');
                //   },
                // ),
                // IconButton( // home button
                //   iconSize: 35,
                //   icon: const Icon(Icons.my_location),
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/homeScreen');
                //   },
                // ),
                // IconButton( // notification button
                //   iconSize: 35,
                //   icon: const Icon(Icons.notifications),
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/NotificationScreen');
                //   },
                // ),
                // IconButton( // settings button
                //   iconSize: 35,
                //   icon: const Icon(Icons.settings),
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/settingsScreen');
                //     // ...
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}