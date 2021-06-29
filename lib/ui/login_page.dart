import 'package:flutter/material.dart';
import 'package:hire_me/ui/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/hire.png')),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Masukkan Nama Anda'),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(24, 12, 24, 0),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return HomePage(name);
              }));
            },
            child: Text('Masuk'),
            style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(171, 53, 48, 1)),
          ),
        )
      ]),
    );
  }
}
