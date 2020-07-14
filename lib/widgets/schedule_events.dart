import 'package:flutter/material.dart';
import 'package:event_app/widgets/event_info.dart';

class SchedEvent extends StatelessWidget {
  final String _eventTime;
  //final Color _eventColor;
  final AssetImage _eventIcon;
  final String _eventLocation;
  // final String _eventDuration;
  final String _eventName;
  final Color _currentColor;
  final int _currentIndex;
  final int _totalNumberofElements;

  SchedEvent(
      this._eventName,
      this._eventTime,
      //this._eventColor,
      this._eventIcon,
      this._eventLocation,
      this._currentColor,
      this._currentIndex,
      this._totalNumberofElements);
  @override
  Widget build(BuildContext context) {
    AssetImage _image = AssetImage('assets/images/chess_piece.png');
    return Container(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 30, right: 15),
            child: Text(
              _eventTime,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                fontFamily: 'Open Sans',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0)),
                    ),
                    context: context,
                    builder: (BuildContext bc) {
                      return Wrap(children: <Widget>[
                        Container(
                          color: Colors.white,
                          child: Container(
                            decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(25.0),
                                    topRight: const Radius.circular(25.0))),
                            child: EventInfo(
                              'Chess Tournament',
                              'Common Room',
                              '11:00a.m.-12:00',
                              _image,
                              'A Tournament of Beer Die is held over A Tournament of Beer Die is held over A Tournament of Beer Die is held over A Tournament of Beer Die is held over A Tournament of Beer Die is held over',
                            ),
                          ),
                        )
                      ]);
                    });
              },
              elevation: 6,
              color: Color.lerp(_currentColor, Color(0xFF7851A9),
                  (_currentIndex / _totalNumberofElements)),
              child: Image(
                image: _eventIcon,
                alignment: Alignment.center,
                repeat: ImageRepeat.noRepeat,
                matchTextDirection: false,
                width: 45,
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
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontFamily: 'Open Sans',
                ),
              ),
              Text(
                _eventLocation,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontFamily: 'Open Sans',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
