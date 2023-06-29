class TransactionModel {
  late bool status;
  late String message;
  TransactionData? T_data;

  TransactionModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    T_data =
        json['data'] != null ? TransactionData.fromJson(json['data']) : null;
  }
}

class TransactionData {
  int id = 0;
  String name = '';
  String phone = '';
  String email = '';
  String image = '';
  String token = '';

  TransactionData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['phone'];
    phone = json['email'];
    image = json['image'];
    token = json['token'];
  }
}
