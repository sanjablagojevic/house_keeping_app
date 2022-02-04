import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:house_keeping_app/screens/login_screen.dart';
import 'package:house_keeping_app/screens/profile_screen.dart';
import 'package:house_keeping_app/screens/explore-screen.dart';

import 'explore-screen.dart';
import 'home_page.dart';

class BottomBar extends StatefulWidget{

  static const routeName='bottom-bar-screen';
  const BottomBar({key}):super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>{
  int _currentIndex=0;
  List page=[
    MyHomePage(),
    ExploreScreen(),
    //ProfileScreen(),
    LoginScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            page[_currentIndex],
            Positioned(
              top: MediaQuery.of(context).size.height*0.85,
              left:5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  height: 60,
                  width: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: GNav(
                      onTabChange: (index){
                        setState(() {
                          _currentIndex=index;
                        });
                      },
                      rippleColor: Colors.white,
                      hoverColor: Colors.white,
                      haptic: true,
                      tabBorderRadius: 15,
                      tabActiveBorder: Border.all(
                          color: Colors.white,
                          width: 1
                      ),
                      tabBorder: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      curve: Curves.easeIn,
                      duration: Duration(
                        milliseconds: 500,
                      ),
                      gap: 8,
                      color: Colors.black,
                      activeColor: Colors.black,
                      iconSize: 32,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5
                      ),
                      tabs: [
                        GButton(
                          icon: Icons.home_rounded,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.explore_outlined,
                          text: 'Explore',
                        ),
                        GButton(
                          icon: Icons.person_outline,
                          text: 'Sign',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}