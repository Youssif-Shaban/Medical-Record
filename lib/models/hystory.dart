class HistoryModel {
  bool? name;
  //String name='';
  medical? data;

  HistoryModel.fromjson(Map<String, dynamic> json) {
    name = json['status'];
    data = json["data"] != null ? medical.fromjson(json['data']) : null;
  }
}

class medical {
//  String condition='';
  int condition = 0;
  String Surgeries = "";
  String hospitalizations = "";
  String fatherMedicalHistory = "";
  String motherMedicalHistory = "";
  String grandfatherMedicalHistory = "";
  // String allergies="";

  medical.fromjson(Map<String, dynamic> json) {
    condition = json['id'];
    Surgeries = json['name'];
    hospitalizations = json['email'];
    fatherMedicalHistory = json['phone'];
    motherMedicalHistory = json['image'];
    grandfatherMedicalHistory = json['token'];
    // allergies=json['allergies'];
  }

  // medical.fromjson(Map<String,dynamic>json)
  // {
  //   condition=json['pastMedicalConditions'];
  //   Surgeries=json['pastSurgeries'];
  //   hospitalizations=json['hospitalizations'];
  //   fatherMedicalHistory=json['fatherMedicalHistory'];
  //   motherMedicalHistory=json['motherMedicalHistory'];
  //   grandfatherMedicalHistory=json['grandfatherMedicalHistory'];
  //   allergies=json['allergies'];
  // }
}
