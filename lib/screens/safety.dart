import 'package:flutter/material.dart';

class Safety extends StatefulWidget {
  @override
  _SafetyState createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              offset: Offset(0, 3),
              blurRadius: 7.0,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 280.0, top: 60.0),
              child: Text(
                'Safety',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepPurple[800],
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 120.0, top: 5.0),
              child: Text(
                'Stay safe with the help of these services.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Open Sans',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
