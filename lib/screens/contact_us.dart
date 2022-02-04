import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant.dart';

class ContactUs extends StatelessWidget {
  static const routeName='contact-us-screen';
  @override
  Widget build(BuildContext context) {

    Widget _buildFullName() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Full Name',
            style: kLabelContactStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration:  kBoxDecorationStyles,
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                hintText: 'Full Name',
                hintStyle: kHintContactTextStyle,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildMail() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: kLabelContactStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration:  kBoxDecorationStyles,
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                hintText: 'Email',
                hintStyle: kHintContactTextStyle,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildMessage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Message',
            style: kLabelStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.topLeft,
            decoration: kBoxDecorationStyles,
            height: 120.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
                hintText: 'Message',
                hintStyle: kHintContactTextStyle,
              ),
            ),
          ),
        ],
      );
    }

    Widget _buildContactBtn() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => print('Contact Us Button Pressed'),
          padding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: Colors.white,
          child: Text(
            'Contact Us',
            style: TextStyle(
              color: Color(0xFF527DAA),
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans',
            ),
          ),
        ),
      );
    }
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: new EdgeInsets.fromLTRB(0,30,0,0),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                child: Lottie.network(
                    'https://assets10.lottiefiles.com/packages/lf20_7wwm6az7.json',
                    repeat: true
                ),
              ),
              SizedBox(
                height: 20,
              ),
               Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: _buildFullName(),
              ),
              SizedBox(height: 10.0),
              Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: _buildMail(),
              ),
              SizedBox(height: 10.0),
              Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: _buildMessage(),
              ),
              Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: _buildContactBtn(),
              ),
            ],
          ),
        ),

      ),
    );
  }
}