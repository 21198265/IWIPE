import 'package:flutter/material.dart';
import 'Templates/MainAppBar.dart';
import 'Templates/MainBottomNavBar.dart';


class PaymentInfo extends StatelessWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Payment info"),
      bottomNavigationBar: MainBottomNavBar(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
          child: const Text(
            'IMPLEMENT PAYMENT OPTIONS',
            style: TextStyle(fontSize: 20),
          ),
        ),



      ]),
    );
  }
}
