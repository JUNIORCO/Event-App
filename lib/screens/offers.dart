import 'package:flutter/material.dart';
import '../cards/offers_card.dart';

class Offers extends StatelessWidget {
  List<String> _offersName = [
    'Starbucks Coffee',
    'BURGER KING',
    'MCDONALDS',
    'Starbucks Coffee'
  ];
  List<DateTime> _offersValidity = [
    DateTime.utc(2020, DateTime.september, 3),
    DateTime.utc(2020, DateTime.september, 6),
    DateTime.utc(2020, DateTime.september, 4),
    DateTime.utc(2020, DateTime.august, 31),
  ];
  List<AssetImage> _offersLogos = <AssetImage>[
    AssetImage('assets/images/starbucks_logo.png'),
    AssetImage('assets/images/burgerking_logo.png'),
    AssetImage('assets/images/mcdonalds_logo.png'),
    AssetImage('assets/images/starbucks_logo.png'),
  ];
  List<String> _offersOffer = <String>[
    '20% off',
    '10\$ off',
    '''Buy 1
  Get 1 free ''',
    '50% off',
  ];
  List<Color> _offersColor = <Color>[
    Colors.green,
    Colors.red,
    Colors.yellow[700],
    Colors.green,
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
              'Offers',
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
            child: const Text(
              'Show your university ID to redeem these offers.',
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
              itemCount: _offersName.length,
              itemBuilder: (BuildContext context, int index) {
                return OffersCard(
                    _offersName[index],
                    _offersValidity[index],
                    _offersLogos[index],
                    _offersOffer[index],
                    _offersColor[index]);
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
