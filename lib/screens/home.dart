import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'package:event_app/widgets/schedule_events.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<String> _eventTime = <String>[
    '11:00 am',
    '4:00 p.m.',
    '6:00 p.m.',
    '8:00 p.m.',
  ];
  List<String> _eventLocation = <String>[
    'Common Room',
    'All Over The Map',
    'Blues Pub',
    'Cafe Campus',
  ];
  List<String> _eventName = <String>[
    'Chess Tournament',
    'Pub Crawl',
    'Beer Die',
    'Century Club',
  ];
  List<AssetImage> _eventIcon = <AssetImage>[
    AssetImage('assets/images/chess_piece.png'),
    AssetImage('assets/images/running_man.png'),
    AssetImage('assets/images/beer_white.png'),
    AssetImage('assets/images/disco_ball.png'),
  ];

  List<DateTime> _dates = <DateTime>[
    DateTime.utc(2020, DateTime.august, 29),
    DateTime.utc(2020, DateTime.august, 30),
    DateTime.utc(2020, DateTime.august, 31),
    DateTime.utc(2020, DateTime.september, 1),
    DateTime.utc(2020, DateTime.september, 2),
  ];

  DateFormat _weekDayFormatter = DateFormat('E');
  DateFormat _numDayFormatter = DateFormat('d');

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

  SvgPicture backgroundIcon = SvgPicture.asset(
    'assets/icons/calendar.svg',
    height: 112.0,
    color: Colors.white,
  );

  Widget _buildSchedule(int index) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: _selectedIndex == index ? Colors.white : Colors.transparent,
          ),
          child: Column(
            children: <Widget>[
              Text(
                _weekDayFormatter.format(_dates[index]).substring(0, 1),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: _selectedIndex == index ? Colors.black : Colors.white,
                  fontFamily: 'Open Sans',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              Text(
                _numDayFormatter.format(_dates[index]),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: _selectedIndex == index ? Colors.black : Colors.white,
                  fontFamily: 'Open Sans',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
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
        ),
        Column(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              curve: Curves.easeIn,
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
                  Container(
                    alignment: Alignment.centerLeft,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: _dates
                        .asMap()
                        .entries
                        .map(
                          (MapEntry map) => _buildSchedule(map.key),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                  ),
                ],
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              curve: Curves.easeIn,
              // margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.only(left: 30.0, top: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Day ' + (_selectedIndex + 1).toString(),
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: _colors[_selectedIndex + 5],
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                itemCount: _eventName.length,
                itemBuilder: (BuildContext context, int index) {
                  return SchedEvent(
                      _eventName[index],
                      _eventTime[index],
                      _eventIcon[index],
                      _eventLocation[index],
                      _colors[_selectedIndex],
                      index,
                      _eventName.length);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Color(0x00000000), // transparent color
                  height: 35.0,
                  endIndent: 0.0,
                  indent: 0.0,
                  thickness: 0.0,
                ),
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.only(top: 30.0, right: 10.0),
          child: Transform.rotate(
            angle: -math.pi / 5.0,
            child: Opacity(
              opacity: 0.2,
              child: backgroundIcon,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.only(top: 30.0, right: 75.0),
          child: Transform.rotate(
            angle: -math.pi / 5.0,
            child: Opacity(
              opacity: 0.2,
              child: backgroundIcon,
            ),
          ),
        ),
      ],
    );
  }
}
