import 'package:flutter/material.dart';
import 'package:path/path.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfaf1f1f1),
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(context, '/SignIn'),
          child: Center(
            child: Column(
              children: <Widget>[
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/language');
                //   },
                //   child: const Text('change language'),
                // ),

                Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "iWipe training",
                      style: TextStyle(fontSize: 35),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  child: Image.asset(
                    'assets/images/iwipe_woman3.png',
                    fit: BoxFit.cover,
                  ),
                )),
                //Image.asset('Assets/images/iWipe _woman.ai'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
