import 'package:flutter/material.dart';
import '../widgets/offers_card.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  List<String> _offersName = ['STARBUCKS COFFEE', 'BURGER KING', 'MCDONALDS'];
  List<String> _offersValidity = [
    'Sept. 3, 2020',
    'Sept. 6, 2020',
    'Sept. 4, 2020'
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
                'Offers',
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
              padding: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
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
