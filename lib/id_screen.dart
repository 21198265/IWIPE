import 'package:flutter/material.dart';
import 'IDSelectScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'IWipe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,

      initialRoute: '/', // Specify the initial route
      routes: {
        '/idSelectScreen': (context) => const IDSelectScreen()
      },
    );
  }
}
class IDScreen extends StatelessWidget {
  const IDScreen({Key? key}) : super(key: key);

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
                  child:Image.asset('IDimage.jpg'),
                  height: 300
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'An ID is needed for your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                IconButton( // notification button
                  iconSize: 72,
                  icon: const Icon(Icons.arrow_circle_right_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NotificationScreen');
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('I dont have ID'),
                ),
              ],
            ),
          ),


    );
  }
}