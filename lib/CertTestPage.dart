import 'package:flutter/material.dart';
import 'widgets/MainBottomNavBar.dart';
import 'widgets/MainAppBar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CertTestScreen extends StatelessWidget {
  const CertTestScreen({Key? key}) : super(key: key);
  static const String _title = 'IWipe';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'iWipe'),
      bottomNavigationBar: MainBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Final Evaluation',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'You Will have 60 minutes to complete the exam, there are 50 multiple-choice questions worth 1 mark each you must score 98% or higher to pass',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            LinearPercentIndicator(
              width: 140.0,
              lineHeight: 14.0,
              percent: 0.5,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Question 1: ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text('answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '');
              },
              child: const Text('Next Question'),
            ),
          ],
        ),
      ),
    );
  }
}
