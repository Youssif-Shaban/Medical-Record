class loginModel {
  bool status = true;
  late String token;
  userData? u;

  loginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    u = json['data'] != null ? userData.fromJson(json['data']) : null;
  }
}

class userData {
  String user_ssn = '';
  String user_name = '';
  String manufacturer_number = '';
  String user_email = '';
  String user_password = '';
  String user_address = '';
  String user_job = '';
  String user_nationality = '';
  String user_phone = '';
  String user_bd = '';
  String user_governorate = '';
  String is_admin = '';
  //String user_address = '';

  userData.fromJson(Map<String, dynamic> json) {
    user_ssn = json['user_ssn'];
    user_name = json['user_name'];
    manufacturer_number = json['manufacturer_number'];
    user_email = json['user_email'];
    user_password = json['user_password'];
    user_address = json['user_address'];
    user_job = json['user_job'];
    user_nationality = json['user_nationality'];
    user_phone = json['user_phone'];
    user_bd = json['user_bd'];
    user_governorate = json['user_governorate'];
    is_admin = json['is_admin'];
  }
}
