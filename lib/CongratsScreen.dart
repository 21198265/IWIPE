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
        '/': (context) => CongratsScreen(),
        //'/Payment': (context) => PaymentScreen(),
        //'/Notifications': (context) => NotificationScreen(),
        //'/home': (context) => HomeScreen(),
        //'/settings': (context) => settingsScreen(),
        //'/Progress': (context) => ProgressScreen(),
      },
    );
  }
}

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);
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
                    'Congratulations, you have passed the test:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Image(
                  image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/IDSelectScreen');
                  },
                  child: const Text('Payment'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Progress'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/IDSelectScreen');
                  },
                  child: const Text('Home'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Notifications'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Settings'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}