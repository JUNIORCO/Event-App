import 'package:flutter/material.dart';

class SafetyCard extends StatelessWidget {
  final String _title;
  final String _number;
  final String _info;
  final AssetImage _image;
  final String _word;
  final Color _color;

  SafetyCard(this._title, this._number, this._info, this._image, this._word,
      this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40.0, bottom: 20.0, left: 40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey[100],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          stops: [0.12, 0.24],
          colors: [_color, Colors.white],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            spreadRadius: 5.0,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 18.0, left: 25.0, bottom: 2.5),
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
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 25.0, bottom: 2.5),
            child: Text(
              _number,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 2.5, left: 25.0, bottom: 2.5),
            child: Text(
              _info,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w200,
                color: Colors.black,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(
                  top: 10.0, right: 20.0, bottom: 10.0, left: 20.0),
              margin: EdgeInsets.only(top: 10.0, left: 25.0, bottom: 20.0),
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
                  fontWeight: FontWeight.w300,
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
