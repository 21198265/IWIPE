import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:device_preview/device_preview.dart';



void main() async {
 // runApp(DevicePreview(
  //  enabled: true,
   // builder: (context) => const MyApp(),
  //));
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
        '/': (context) => LivingRoom(),
        //'/Payment': (context) => PaymentScreen(),
        //'/Notifications': (context) => NotificationScreen(),
        //'/home': (context) => HomeScreen(),
        //'/settings': (context) => settingsScreen(),
        //'/Progress': (context) => ProgressScreen(),
      },
    );
  }
}

class LivingRoom extends StatelessWidget {
  const LivingRoom({Key? key}) : super(key: key);
  static const String _title = 'IWipe';

  get image => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add a MaterialApp here as well
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Living room'),
            backgroundColor: Color(0xffB8E28A),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                const Image(
                  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Cleaning TV:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
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
                    'Cleaning Carpet:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Cleaning Sofas:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'To see more, please click a button',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                const Image(
                  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
                IconButton(
                  iconSize: 35,
                  icon: const Icon(Icons.account_balance_wallet),
                  onPressed: () {
                    Navigator.pushNamed(context, '/IDSelectScreen');
                    // ...
                  },
                ),
                IconButton( // progress button
                  iconSize: 35,
                  icon: const Icon(Icons.bar_chart),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                    // ...
                  },
                ),
                IconButton( // home button
                  iconSize: 35,
                  icon: const Icon(Icons.my_location),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                    // ...
                  },
                ),
                IconButton( // notification button
                  iconSize: 72,
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                    // ...
                  },
                ),
                IconButton( // settings button
                  iconSize: 72,
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                    // ...
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}