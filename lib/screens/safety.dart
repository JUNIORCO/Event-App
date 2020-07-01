import 'package:flutter/material.dart';

class Safety extends StatefulWidget {
  @override
  _SafetyState createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  List<String> _safetyTitle = ['Security', 'Tel-Aide', 'OSVERSE'];
  List<String> _safetyNumber = [
    '(514) 389-300',
    '(514) 935-1101',
    '550 Sherbrooke O. Suite 550'
  ];
  List<String> _safetyInfo = [
    'For on campus emergencies& dispatching resources (i.e. MSERT)',
    '24/7 listening service for any situation, crisis or not.',
    'Trauma-informed resources for sexual violence survivors.'
  ];
  List<Icon> _safetyIcon = [];
  List<String> _buttonWord = ['Call Now', 'Call Now', 'Open Maps'];
  List<Color> _safetyColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  Widget _buildSafetyCard(int index) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      padding: EdgeInsets.all(20.0),
      height: 170,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey[200],
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
            child: Text(
              _safetyTitle[index],
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              _safetyNumber[index],
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              _safetyInfo[index],
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(top: 15, bottom: 0),
              padding: EdgeInsets.all(5.0),
              width: 96,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: _safetyColor[index],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    offset: Offset(0, 3),
                    blurRadius: 7.0,
                  ),
                ],
              ),
              child: Text(
                _buttonWord[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[600],
        body: Container(
          height: MediaQuery.of(context).size.height,
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
              Padding(
                padding: EdgeInsets.only(left: 0.0, right: 280.0, top: 60.0),
                child: Text(
                  'Safety',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple[800],
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 120.0,
                  top: 5.0,
                ),
                child: Text(
                  'Stay safe with the help of these services.',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Column(
                children: List.generate(_safetyTitle.length, (index) {
                  return _buildSafetyCard(index);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
