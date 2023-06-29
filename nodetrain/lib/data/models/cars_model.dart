// class car {
//   late String vehicleid;
//   late String licence;
//   late String vehicleclass;
//   late String traficunit;
//   late String licencecreatedate;
//   late String licenceexpiredate;
//   late String manufacture;
//   late String model;
//   late int manufactureringyear;
//   late String color;
//   late String isstolen;
//   late String checked;
//   late String vehicleimage;

//   car.fromJson(Map<String, dynamic> json) {
//     vehicleid = json('vehicle_id');
//     licence = json('license');
//     vehicleclass = json('vehicle_class');
//     traficunit = json('traffic_unit');
//     licencecreatedate = json('license_create_date');
//     licenceexpiredate = json('license_expired_date');
//     manufacture = json('manufacturer');
//     model = json('model');
//     manufactureringyear = json('manufacturering_year');
//     color = json('color');
//     isstolen = json('is_stolen');
//     checked = json('checked');
//     vehicleimage = json('vehicle_image');
//   }
// }

class cartaCar {
  late String vehicleId;
  late String license;
  late String vehicleClass;
  late String trafficUnit;
  late String licenseCreateDate;
  late String licenseExpiredDate;
  late String manufacturer;
  late String model;
  late int manufactureringYear;
  late String color;
  late String isStolen;
  late String checked;
  late String vehicleImage;

  cartaCar.fromJson(Map<String, dynamic> json) {
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
    vehicleImage = json['vehicle_image'];
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
    data['vehicle_image'] = this.vehicleImage;
    return data;
  }
}
