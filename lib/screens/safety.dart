import 'package:flutter/material.dart';
import '../widgets/safety_card.dart';

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
    'For on campus emergencies & dispatching resources (i.e. MSERT)',
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
        ),
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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0, top: 60.0),
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
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.0,
              right: 120.0,
              top: 5.0,
              bottom: 15,
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
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(right: 23, left: 23, bottom: 23),
              itemCount: _safetyTitle.length,
              itemBuilder: (BuildContext context, int index) {
                return SafetyCard(
                    _safetyTitle[index],
                    _safetyNumber[index],
                    _safetyInfo[index],
                    _buttonWord[index],
                    _safetyColor[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Color(0x00000000), // transparent color
                height: 0.0,
                endIndent: 0.0,
                indent: 0.0,
                thickness: 0.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
