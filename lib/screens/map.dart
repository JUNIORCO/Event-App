import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new FlutterMap(
      options: new MapOptions(
        center: new LatLng(51.5, -0.09),
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
        new MarkerLayerOptions(
          markers: [
            new Marker(
              width: 80.0,
              height: 80.0,
              point: new LatLng(51.5, -0.09),
              builder: (ctx) => new Container(
                child: new FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
