import 'package:flutter/material.dart';

class EventInfo extends StatelessWidget {
  final String _eventName;
  final String _eventLocation;
  final String _eventDuration;
  final AssetImage _eventIcon;
  final String _eventDescription;
  final ScrollController _scrollController;

  EventInfo(
    this._eventName,
    this._eventLocation,
    this._eventDuration,
    this._eventIcon,
    this._eventDescription,
    this._scrollController,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: MediaQuery.of(context).size.height * (0.65),
      child: Material(
        child: SafeArea(
          bottom: false,
          child: ListView(
            shrinkWrap: true,
            controller: _scrollController,
            physics: ClampingScrollPhysics(),
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
                      child: CircleAvatar(
                        backgroundImage: _eventIcon,
                        radius: 40,
                        backgroundColor: Colors.pink,
                      ),
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
              SizedBox(height: 30),
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
              SizedBox(height: 10),
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
              SizedBox(height: 30),
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
              Image(
                image: AssetImage('assets/images/map_image.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
