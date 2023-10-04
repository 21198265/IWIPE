import 'package:flutter/material.dart';
import 'package:iwipe/IDSelectScreen.dart';
import 'package:iwipe/PaymentInfo.dart';
import 'package:iwipe/homeScreen.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'LearningHome.dart';
import 'Lesson.dart';
import 'IntroScreen.dart';
import 'id_screen.dart';
import 'CongratsScreen.dart';
import 'progress.dart';
import 'package:iwipe/settings.dart';
import 'notifications.dart';
import 'package:iwipe/CertTestPage.dart';
import 'package:iwipe/InfoScreen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(
            toolbarHeight: 100,
            titleSpacing: 100,
            foregroundColor: Colors.black,
            backgroundColor: Color(0xffB8E28A),
            shape: RoundedRectangleBorder(

                borderRadius:
                    BorderRadius.vertical(
                        bottom: Radius.circular(30))

            ),

            centerTitle: true,
          )

      ),

      initialRoute: '/', // Specify the initial route
      routes: {
        '/': (context) => const HomeScreen(),
        '/SignIn': (context) => const SignIn(),
        '/SignUp': (context) => const SignUp(),
        '/LearningHome': (context) => const LearningHome(),
        '/PaymentInfo': (context) => const PaymentInfo(),
        '/Lesson': (lesson) => const Lesson(),
        '/id_screen':(context)  => const IDScreen(),
        '/IDSelectScreen':(context) => const IDSelectScreen(),
        '/homeScreen':(context) => const HomeScreen(),
        '/congratsScreen':(context) => const CongratsScreen(),
        '/settings':(context) => const settings(),
        '/progress':(context) => const progress(),
        '/notification':(context) => const notifications(),
        '/certTestScreen':(context) => const CertTestScreen(),
        '/infoScreen':(context) => const InfoScreen()
      },
    );
  }
}

