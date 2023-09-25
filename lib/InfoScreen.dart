
import 'package:flutter/material.dart';
import 'package:iwipe/PaymentInfo.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'IWipe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,

      initialRoute: '/', // Specify the initial route
      routes: {
        '/Paymentinfo': (context) => const PaymentInfo(),
      },
    );
  }
}
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
                Image.asset('InfoImage.png'),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'From Trainee to Entrepreneur',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Start your journey towards becoming a successful cleaning professional',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/PaymentInfo');
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