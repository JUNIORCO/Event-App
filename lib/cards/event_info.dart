import 'package:flutter/material.dart';
import 'package:event_app/cards/event_info.dart';

class EventInfo extends StatelessWidget {
  final String _eventName;
  final String _eventLocation;
  final String _eventDuration;
  //final Color _eventColor;
  final AssetImage _eventIcon;
  final String _eventDescription;
  // final String _eventMapLocation;

  EventInfo(
    this._eventName,
    this._eventLocation,
    this._eventDuration,
    //  this._eventColor,
    this._eventIcon,
    this._eventDescription,
    //   this._eventMapLocation,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (2 / 3),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 6,
                  // color: Color.lerp(_currentColor, Color(0xFF7851A9),
                  //    (_currentIndex / _totalNumberofElements)),
                  color: Colors.pink,
                  child: Image(
                    image: _eventIcon,
                    alignment: Alignment.center,
                    repeat: ImageRepeat.noRepeat,
                    matchTextDirection: false,
                    width: 50,
                  ),
                  shape: CircleBorder(),
                  visualDensity: VisualDensity(horizontal: 4.0, vertical: 4.0),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _eventName,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 23.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Text(
                    _eventDuration,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Text(
                    _eventLocation,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Description',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Open Sans',
            ),
          ),
          SizedBox(height: 20),
          Text(
            _eventDescription,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontFamily: 'Open Sans',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Location on Map',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontFamily: 'Open Sans',
            ),
          ),
          Text(""" 
          
          """),
          // Container(
          //   color: Colors.black,
          //   width: 10,
          //   height: 10,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.all(Radius.circular(30)),
          //   ),
          // ),
        ],
      ),
    );
  }
}
