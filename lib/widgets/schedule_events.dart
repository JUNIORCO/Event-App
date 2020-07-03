import 'package:flutter/material.dart';

class SchedEvent extends StatelessWidget {
  final String _eventTime;
  final Color _eventColor;
  final Icon _eventIcon;
  final String _eventLocation;
  // final String _eventDuration;
  final String _eventName;

  SchedEvent(
    this._eventName,
    this._eventTime,
    this._eventColor,
    this._eventIcon,
    this._eventLocation,
  );
  @override
  Widget build(BuildContext context) {}
}
