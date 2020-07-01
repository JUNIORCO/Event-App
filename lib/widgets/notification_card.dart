import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationCard extends StatelessWidget {
  // Underscore before the variable name means it's a private variable
  // final: once you set it, you can't change it
  final String _text;
  AssetImage _image;
  final DateTime _date;
  final DateFormat formatter = new DateFormat('MMMMd');
  double _opacity;

  // Constructor
  NotificationCard(this._text, this._image, this._date, this._opacity);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _opacity,
      child: Container(
        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              offset: Offset(0, 3),
              blurRadius: 7.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                backgroundImage: _image,
                radius: 30,
              ),
            ),
            Expanded(
              child: Text(
                _text,
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
