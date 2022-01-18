// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';

void main() {
  runApp( Crypto());
}

class Crypto extends StatelessWidget {
  const Crypto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
         
      ),
      title: 'Crypto',
      debugShowCheckedModeBanner: false,
      home: CryptoHome(),
    );
  }
}

class CryptoHome extends StatefulWidget {
  

  @override
  State<CryptoHome> createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome> {


// Assigning Pages to Navigation Items

 final List<Widget> _widgetOption = <Widget>[
    MyHomepage(),
    Center(child: Text('Wallet', style: kHeadingTextStyle,)),
    Center(child: Text('Notification', style: kHeadingTextStyle,)),
    Center(child: Text('Calander', style: kHeadingTextStyle,)),
    Center(child: Text('User info', style: kHeadingTextStyle,)),
  ];

// function for Bottom Navigation bar Items
  int _selectedIndex = 0;

  void _onTapnav(int index) {
   setState(() {
      _selectedIndex = index;
    });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body of the container
      body:  SafeArea(
        child: Column(
          children: [
            _widgetOption.elementAt(_selectedIndex),
          ],
        ),
      ),
          

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
        backgroundColor: kContainerColor,
        selectedItemColor: kHeadingColor,
        unselectedItemColor: kSubHeadingColor,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.wallet,
              ),
              label: 'Wallet'),
              BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.bell,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.calendarAlt,
              ),
              label: 'Calender'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userAlt,
              ),
              label: 'User'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapnav,
      ),
    );
  }
}
