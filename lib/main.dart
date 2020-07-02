import 'package:flutter/material.dart';
import 'package:event_app/screens/home_screen.dart';
import 'package:event_app/screens/map.dart';
import 'package:event_app/screens/notifications.dart';
import 'package:event_app/screens/offers.dart';
import 'package:event_app/screens/safety.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _selectedPage = 2;
  final _pageOptions = [
    Notifications(),
    Map(),
    HomeScreen(),
    Offers(),
    Safety(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF7851A9),
      ),
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF7851A9),
          currentIndex: _selectedPage,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 30.0,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.place,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              title: SizedBox.shrink(),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.security,
              ),
              title: SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
