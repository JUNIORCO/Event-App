import 'package:flutter/material.dart';
import 'package:event_app/widgets/cards/offers_card.dart';

class Offers extends StatelessWidget {
  List<String> _offersName = [
    'Starbucks Coffee',
    'BURGER KING',
    'MCDONALDS',
  ];
  List<DateTime> _offersValidity = [
    DateTime.utc(2020, DateTime.september, 3),
    DateTime.utc(2020, DateTime.september, 6),
    DateTime.utc(2020, DateTime.september, 4),
  ];
  List<AssetImage> _offersLogos = <AssetImage>[
    AssetImage('assets/images/starbucks_logo.png'),
    AssetImage('assets/images/burgerking_logo.png'),
    AssetImage('assets/images/mcdonalds_logo.png'),
  ];
  List<String> _offersOffer = <String>[
    '20% off',
    '10\$ off',
    '''Buy 1
  Get 1 free ''',
  ];
  List<Color> _offersColor = <Color>[
    Colors.green,
    Colors.red,
    Colors.yellow[700],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40.0),
          bottomRight: Radius.circular(40.0),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 30.0),
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
          Padding(
            padding: const EdgeInsets.only(
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
                    companyName: _offersName[index],
                    companyLogo: _offersLogos[index],
                    validityDate: _offersValidity[index],
                    offer: _offersOffer[index],
                    color: _offersColor[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Color(0x00000000), // transparent color
                height: 15.0,
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
