
import 'package:flutter/material.dart';


class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
  static const String _title = 'Get Started';

  get image => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Add a MaterialApp here as well
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Get Started!'),
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
                    '',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/IDSelectScreen');
                  },
                  child: const Text('get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}