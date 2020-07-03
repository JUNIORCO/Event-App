import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new FlutterMap(
        options: new MapOptions(
          center: new LatLng(34.056340, -118.232050),
          zoom: 13.0,
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate: "https://api.magbox.com/v2/"
                "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1IjoiYW5kcmVhZWxoYWdlIiwiYSI6ImNrYzVnaGQ3OTA1MGgyeXFleWYxcXpvZG4ifQ.4koN6CUxcjXXGoughVaGWw',
              'id': 'ckc5ghd79050h2yqeyf1qzodn',
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80,
                height: 80,
                point: LatLng(34.056340, -118.232050),
                builder: (ctx) => Container(
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                    color: Color(0xFF6200ee),
                    iconSize: 45.0,
                    onPressed: () {},
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
