import 'package:flutter/material.dart';
import 'widgets/MainAppBar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfaf1f1f1),
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushReplacementNamed(context, '/SignIn'),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              opacity: 0.4,
              image: AssetImage('assets/images/intro_background.jpg'),
              fit: BoxFit.cover,
            )),

            child:
              Center(
                child: Text(
                  "Welcome to iWipe",
                  style: TextStyle(fontSize: 30),

                ),
              )
            //Image.asset('Assets/images/iWipe _woman.ai'),
          ),
        ),
      ),
    );
  }
}
