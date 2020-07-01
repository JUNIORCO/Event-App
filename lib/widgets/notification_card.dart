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
  String _header;

  // Constructor
  NotificationCard(
      this._text, this._image, this._date, this._opacity, this._header);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Visibility(
          visible: !(_header.length == 0),
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
                top: 20.0, right: 20.0, bottom: 20.0, left: 20.0),
            child: Text(
              _header,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(_opacity)),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(_opacity),
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
          margin: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
          padding: const EdgeInsets.all(20.0),
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
        )
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white.withOpacity(_opacity),
  //       borderRadius: BorderRadius.circular(30.0),
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.grey.withOpacity(0.3),
  //           spreadRadius: 5,
  //           offset: Offset(0, 3),
  //           blurRadius: 7.0,
  //         ),
  //       ],
  //     ),
  //     margin: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
  //     padding: const EdgeInsets.all(20.0),
  //     child: Row(
  //       children: <Widget>[
  //         Padding(
  //           padding: EdgeInsets.only(right: 10.0),
  //           child: CircleAvatar(
  //             backgroundImage: _image,
  //             radius: 30,
  //           ),
  //         ),
  //         Expanded(
  //           child: Text(
  //             _text,
  //             textAlign: TextAlign.left,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
