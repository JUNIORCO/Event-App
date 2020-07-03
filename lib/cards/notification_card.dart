import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationCard extends StatelessWidget {
  final String _text;
  AssetImage _image;
  final DateTime _date;
  final DateFormat _formatter = new DateFormat.jm();
  double _opacity;

  NotificationCard(this._text, this._image, this._date, this._opacity);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _opacity,
      child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: _image,
                    radius: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      _formatter.format(_date),
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
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
