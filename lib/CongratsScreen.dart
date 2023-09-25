
import 'package:flutter/material.dart';


class CongratsScreen extends StatelessWidget {
  const CongratsScreen({Key? key}) : super(key: key);
  static const String _title = 'Certificate of Certification';

  get image => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add a MaterialApp here as well
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Congratulations'),
            backgroundColor: Color(0xffB8E28A),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset(''),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Congratulations, you have passed the test, you are now IWipe certified, your badge will appear on your profile when registering on the Iwipe service provider platform',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Image.asset(''),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}