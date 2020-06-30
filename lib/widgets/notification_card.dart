import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  // Underscore before the variable name means it's a private variable
  // final: once you set it, you can't change it
  final Color _color;
  final String _text;
  final IconData _icon;

  // Constructor
  // NotificationDetail(Color color) {
  //   this._color = color;
  // }
  // the shorthand version is
  NotificationCard(this._color, this._text, this._icon);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(25),
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(_icon),
            ),
            Expanded(
              child: Text(
                _text,
                textAlign: TextAlign.left,
              ),
            )
          ],
        ));
  }
}
