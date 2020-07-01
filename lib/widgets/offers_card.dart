import 'package:flutter/material.dart';

class OffersCard extends StatelessWidget {
  final String _name;
  final String _validity;
  final AssetImage _logo;
  final String _offer;
  final Color _color;

  OffersCard(this._name, this._validity, this._logo, this._offer, this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      // padding: EdgeInsets.all(5.0),
      height: 170,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey[100],
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
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(30.0),
                topRight: const Radius.circular(30.0),
              ),
              color: _color,
            ),
            width: 360,
            height: 85,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: _logo,
                    radius: 30,
                  ),
                  Text(
                    "\t\t" + _name,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 2, left: 30),
                child: Text(
                  _offer,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: _color,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Valid Until',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                    Text(
                      _validity,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontFamily: 'Open Sans',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
