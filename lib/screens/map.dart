import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FlutterMap(
      options: new MapOptions(
        center: new LatLng(45.496126, -73.565544),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/andreaelhage/ckc7v5qgo0kh61inuw7kg3hvl/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYW5kcmVhZWxoYWdlIiwiYSI6ImNrYzViZ2czbDAxNnIycG4wdHJsZ2xlNmMifQ.qqdl78eo8WH2Vs7-ZyeI_w",
          additionalOptions: {
            'accessToken':
                'pk.eyJ1IjoiYW5kcmVhZWxoYWdlIiwiYSI6ImNrYzViZ2czbDAxNnIycG4wdHJsZ2xlNmMifQ.qqdl78eo8WH2Vs7-ZyeI_w',
            'id': 'mapbox.streets',
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(45.496126, -73.565544),
              builder: (ctx) => Container(
                child: IconButton(
                  icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                  color: Color(0xFF7851A9),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
