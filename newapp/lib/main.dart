import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/BmiResult.dart';
import 'package:newapp/Bmiscrean.dart';
import 'package:newapp/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_open_street_map/flutter_open_street_map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Map App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Map App'),
        ),
        body: FlutterOpenStreetMap(
          center: GeoPoint(29.3104, 30.8416), // center point at Fayoum
          zoom: 12.0,
          markers: [
            Marker(GeoPoint(29.3104, 30.8416), 'Fayoum'), // marker at Fayoum
            Marker(GeoPoint(29.3100, 30.8500), 'Sinuris'), // marker at Sinuris
          ],
        ),
      ),
    );
  }
}
