import 'package:flutter/material.dart';

class CarModel {
  bool status = false;
  late CarDataModel data;

  CarModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = CarDataModel.fromJson(json['data']);
  }
}

class CarDataModel {
  int currentpage = 0;
  List<DataModel> data = [];

  CarDataModel.fromJson(Map<String, dynamic> json) {
    currentpage = json['current_page'];
    json['data'].forEach((element) {
      data.add(DataModel.fromJson(element));
    });
  }
}

class DataModel {
  int id = 0;
  String name = '';
  String image = '';

  DataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }
}
