class Vehicles {
  String vehicleId = '';
  String license = '';
  String vehicleClass = '';
  String trafficUnit = '';
  String licenseCreateDate = '';
  String licenseExpiredDate = '';
  String manufacturer = '';
  String model = '';
  int manufactureringYear = 0;
  String color = '';
  String isStolen = '';
  String checked = '';
  String vehicleImag = '';

  Vehicles.fromJson(Map<String, dynamic> json) {
    vehicleId = json['vehicle_id'];
    license = json['license'];
    vehicleClass = json['vehicle_class'];
    trafficUnit = json['traffic_unit'];
    licenseCreateDate = json['license_create_date'];
    licenseExpiredDate = json['license_expired_date'];
    manufacturer = json['manufacturer'];
    model = json['model'];
    manufactureringYear = json['manufacturering_year'];
    color = json['color'];
    isStolen = json['is_stolen'];
    checked = json['checked'];
    //vehicleImage = json['vehicle_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vehicle_id'] = this.vehicleId;
    data['license'] = this.license;
    data['vehicle_class'] = this.vehicleClass;
    data['traffic_unit'] = this.trafficUnit;
    data['license_create_date'] = this.licenseCreateDate;
    data['license_expired_date'] = this.licenseExpiredDate;
    data['manufacturer'] = this.manufacturer;
    data['model'] = this.model;
    data['manufacturering_year'] = this.manufactureringYear;
    data['color'] = this.color;
    data['is_stolen'] = this.isStolen;
    data['checked'] = this.checked;
    //data['vehicle_image'] = this.vehicleImage;
    return data;
  }
}
