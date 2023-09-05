import 'package:flutter/material.dart';
import 'package:iwipe/main.dart';
import 'SignUp.dart';
import 'main.dart';
void main() async {
  runApp(const SignIn());
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  static const String _title = 'IWipe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(_title),
                backgroundColor: Color(0xffB8E28A),
        ),
        body: const MySatefulWidget(),
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/SignIn': (context) => const SignIn(),
        '/SignUp': (context) => const SignUp(),
      },
    );
  }
}
class MySatefulWidget extends StatefulWidget {
  const MySatefulWidget({Key? key}) : super(key: key);

  @override
  State<MySatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget  extends State<MySatefulWidget>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){

    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  child: const Text('<- Back', style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 40),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Does not have account'),
                  TextButton(
                    child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 15)
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/SignUp');
                    },
                  )
                ],
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: const Text(
                    'Name',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 40, 10),
                  child: TextField(
                    controller: nameController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffFEEAF0),
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                  child: const Text(
                    'Password',
                    style: TextStyle(fontSize:20),
                  )
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 40, 40),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xffFEEAF0),
                      border: OutlineInputBorder(),
                      labelText: '******',
                    ),
                  )
              ),
              Container (
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(30, 0, 40, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF490A5), // Background color
                    ),
                    child: const Text('Login'),
                    onPressed: (){
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(20),
                  child: const Text(
                    'Sign in to continue',
                    style: TextStyle(fontSize:15),
                  )
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(50),
                  child: const Text(
                    'Iwipe',
                    style: TextStyle(
                        fontSize:50,
                      color: Color(0xff62995A),
                  ),
              ),
              ),
            ]
        ));
  }
}