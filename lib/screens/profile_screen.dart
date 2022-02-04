import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatelessWidget{
  static const routeName='profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: new EdgeInsets.fromLTRB(0,50,0,0),
          child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_1h1casbp.json',
                  repeat: true
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text('Sign In',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}