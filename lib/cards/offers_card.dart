import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OffersCard extends StatelessWidget {
  final String companyName;
  final AssetImage companyLogo;
  final DateTime validityDate;
  final String offer;
  final Color color;

  OffersCard({
    @required this.companyName,
    @required this.companyLogo,
    @required this.validityDate,
    @required this.offer,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40.0, bottom: 20.0, left: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            spreadRadius: 5.0,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10.0, left: 15.0, bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0),
              ),
              color: color,
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: companyLogo,
                  backgroundColor: Color(0x00000000),
                  radius: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    companyName.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  offer,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: color,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Valid Until\n' + DateFormat('yMMMd').format(validityDate),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
