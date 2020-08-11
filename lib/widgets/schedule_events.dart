import 'package:flutter/material.dart';
import 'package:event_app/widgets/event_info.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
                showBarModalBottomSheet(
                  expand: false,
                  enableDrag: true,
                  isDismissible: true,
                  context: context,
                  backgroundColor: Colors.white,
                  builder: (context, scrollController) => EventInfo(
                    'Chess Tournament',
                    'Common Room',
                    '11:00 AM — 12:00 PM',
                    _image,
                    'A \ntournament \nof \nBeer \nDie \nis \nheld \nover \nA \ntournament \nof \nbeer \ndie',
                    scrollController,
                  ),
                );
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
