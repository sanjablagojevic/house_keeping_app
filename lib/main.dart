import 'package:flutter/material.dart';
import 'package:house_keeping_app/screens/bottom_nav_bar.dart';
import 'package:house_keeping_app/screens/home_page.dart';
import 'package:house_keeping_app/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HouseKeeping Service',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomBar(),
      routes: {
        ProfileScreen.routeName:(ctx)=>ProfileScreen(),
        BottomBar.routeName: (ctx) => BottomBar(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}