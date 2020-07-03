import 'package:flutter/material.dart';
import '../cards/safety_card.dart';

class Safety extends StatelessWidget {
  List<String> _safetyTitle = [
    'Security',
    'Tel-Aide',
    'OSVERSE',
    'Security',
  ];
  List<String> _safetyNumber = [
    '(514) 389-300',
    '(514) 935-1101',
    '550 Sherbrooke O. Suite 550',
    '(514) 389-300',
  ];
  List<String> _safetyInfo = [
    'For on campus emergencies & dispatching resources (i.e. MSERT)',
    '24/7 listening service for any situation, crisis or not.',
    'Trauma-informed resources for sexual violence survivors.',
    'For on campus emergencies & dispatching resources (i.e. MSERT)',
  ];
  List<String> _safetyImages = [
    'assets/icons/shield.svg',
    'assets/icons/ear.svg',
    'assets/icons/butterfly.svg',
    'assets/icons/shield.svg',
  ];
  List<String> _buttonWord = ['Call Now', 'Call Now', 'Open Maps', 'Call Now'];
  List<Color> _safetyColor = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 60.0, left: 30.0),
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
          Container(
            margin: const EdgeInsets.only(
                top: 5.0, right: 120.0, bottom: 15.0, left: 30.0),
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
              padding: const EdgeInsets.only(top: 10.0, bottom: 30.0),
              itemCount: _safetyTitle.length,
              itemBuilder: (BuildContext context, int index) {
                return SafetyCard(
                    _safetyTitle[index],
                    _safetyNumber[index],
                    _safetyInfo[index],
                    _safetyImages[index],
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
