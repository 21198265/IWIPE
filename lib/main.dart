import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'LoungeRoom.dart';
import 'BathRoom.dart';
import 'IntroScreen.dart';
import 'id_screen.dart';
import 'IDSelectScreen.dart';
import 'CongratsScreen.dart';
import 'progress.dart';
import 'settings.dart';
import 'notifications.dart';
import 'SplashScreen.dart';
import 'CertTestPage.dart';
import 'InfoScreen.dart';
import 'Chemicals.dart';
import 'HomeScreen.dart';
import 'PaymentInfo.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
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
          // appBarTheme: AppBarTheme(
          //   toolbarHeight: 100,
          //   titleSpacing: 100,
          //   foregroundColor: Colors.black,
          //   backgroundColor: Color(0xffB8E28A),
          //
          //
          //   centerTitle: true,
          // )

      ),

      initialRoute: '/HomeScreen', // Specify the initial route
      routes: {
        '/SignIn': (context) => SignIn(),
        '/HomeScreen': (context) => HomeScreen(),
        '/': (context) => const IntroScreen(),
        '/SignUp': (context) => const SignUp(),
        '/LoungeRoom': (context) => const LearningHome(),
        '/PaymentInfo': (context) => const PaymentInfo(),
        '/BathRoom': (lesson) => const BathRoom(),
        '/id_screen':(context)  => const IDScreen(),
        '/IDSelectScreen':(context) => const IDSelectScreen(),
        '/congratsScreen':(context) => const CongratsScreen(),
        '/settings':(context) => const settings(),
        '/progress':(context) => const progress(),
        '/notification':(context) => const notifications(),
        '/certTestScreen':(context) => const CertTestScreen(),
        '/infoScreen':(context) => const InfoScreen(),
        '/splashScreen':(context) => const SplashScreen(),
        '/Chemicals':(context) => const Chemicals(),

      },
    );
  }
}

