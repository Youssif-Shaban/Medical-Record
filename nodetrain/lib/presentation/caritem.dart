import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nodetrain/data/models/cars_model.dart';

class CarItem extends StatelessWidget {
  late final cartaCar carsitem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('${carsitem.trafficUnit}'),
      ),
    );
  }
}
