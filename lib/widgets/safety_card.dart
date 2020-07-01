import 'package:flutter/material.dart';

class SafetyCard extends StatelessWidget {
  final String _title;
  final String _number;
  final String _info;
  // final Icon _icon;
  final String _word;
  final Color _color;

  SafetyCard(this._title, this._number, this._info, this._word, this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      padding: EdgeInsets.all(20.0),
      height: 170,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey[50],
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
              _title,
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
              _number,
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
              _info,
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
                color: _color,
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
                _word,
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
}
