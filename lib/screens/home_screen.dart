import 'package:event_app/screens/notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<String> _time = [];
  List<String> _day = [
    'M\n\n26',
    'T\n\n27',
    'W\n\n28',
    'T\n\n29',
    'F\n\n30',
  ];

  List<Color> _colors = <Color>[
    Color(0xFFFD6A6B),
    Color(0xFF07B6D3),
    Color(0xFFF4EB17),
    Color(0xFF64E85F),
    Color(0xFFE88A1C),
    Color(0xFFE0657A),
    Color(0xFF209FCA),
    Color(0xFFD5CE14),
    Color(0xFF0A9B1B),
    Color(0xFFFC7400),
  ];

  Widget _buildSchedule(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: _selectedIndex == index ? Colors.white : Colors.transparent,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Text(
            _day[index],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: _selectedIndex == index ? Colors.black : Colors.white,
              fontFamily: 'Open Sans',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                  blurRadius: 7.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  _colors[_selectedIndex],
                  _colors[_selectedIndex + 5],
                ],
              ),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  offset: Offset(0, 3),
                  blurRadius: 7.0,
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 40,
                      left: 15,
                    ),
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Schedule',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _day
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildSchedule(map.key),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
