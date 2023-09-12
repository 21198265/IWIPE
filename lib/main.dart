import 'package:flutter/material.dart';
import 'package:iwipe/PaymentInfo.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'LearningHome.dart';


void main() async {
  //runApp(DevicePreview(
  // enabled: true,
  //builder: (context) => const MyApp(),
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
        '/': (context) => const HomeScreen(),
        '/SignIn': (context) => const SignIn(),
        '/SignUp': (context) => const SignUp(),
        '/LearningHome': (context) => const LearningHome(),
        '/PaymentInfo': (context) => const PaymentInfo(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    'Welcome to IWipe',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: const Text('Open Sign In Page'),
                ),
              ],
            ),
          ),
    );
  }
}