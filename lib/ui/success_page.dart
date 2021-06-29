import 'package:flutter/material.dart';
import 'package:hire_me/ui/home_page.dart';

class SuccessPage extends StatelessWidget {
  final String name;

  SuccessPage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1 / 2,
                height: MediaQuery.of(context).size.height * 1 / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/check.png')),
                ),
              ),
              Text(
                'Berhasil!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(12, 24, 12, 32),
                child: Text(
                  'Anda berhasil mengirimkan pesan kepada freelancer.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context, 
                      MaterialPageRoute(builder: (context){
                        return HomePage(name);
                      }), 
                      (route) => false);
                  },
                  child: Text('Kembali'))
            ],
          ),
        ),
      ),
    );
  }
}
