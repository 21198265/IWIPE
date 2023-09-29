import 'package:flutter/material.dart';


class PaymentInfo extends StatelessWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Info'),
        backgroundColor: Color(0xffB8E28A),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
          child: const Text(
            'IMPLEMENT PAYMENT OPTIONS',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(),
      ]),
    );
  }
}
