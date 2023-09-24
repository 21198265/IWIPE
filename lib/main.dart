import 'package:flutter/material.dart';
import 'package:iwipe/PaymentInfo.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'LearningHome.dart';
import 'Lesson.dart';
import 'IntroScreen.dart';

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
        '/': (context) => const IntroScreen(),
        '/SignIn': (context) => const SignIn(),
        '/SignUp': (context) => const SignUp(),
        '/LearningHome': (context) => const LearningHome(),
        '/PaymentInfo': (context) => const PaymentInfo(),
        '/Lesson': (lesson) => const Lesson(),
      },
    );
  }
}

