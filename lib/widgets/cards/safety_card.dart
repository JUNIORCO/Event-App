import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SafetyCard extends StatelessWidget {
  final String title;
  final String mainInfo;
  final String description;
  final String buttonText;
  final Color color;
  final SvgPicture icon;

  SafetyCard({
    @required this.title,
    @required this.mainInfo,
    @required this.description,
    @required this.buttonText,
    @required this.color,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40.0, left: 40.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          stops: [0.13, 0.26],
          colors: [color, Colors.white],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            spreadRadius: 5.0,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 10.0, right: 10.0),
            child: icon,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 25.0, bottom: 2.5),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 2.5),
                child: Text(
                  mainInfo,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.5, left: 25.0, bottom: 2.5),
                child: Text(
                  description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0,
                  right: 20.0,
                  bottom: 10.0,
                  left: 20.0,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 25.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: color,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      offset: Offset(0, 3),
                      blurRadius: 7.0,
                    ),
                  ],
                ),
                child: Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontFamily: 'Open Sans',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
