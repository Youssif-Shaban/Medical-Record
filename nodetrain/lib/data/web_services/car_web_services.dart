import 'package:dio/dio.dart';

class carServices {
  late Dio dio;
  carServices() {
    BaseOptions options = BaseOptions(
      baseUrl: 'http://localhost:4242/',
      receiveDataWhenStatusError: true,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>?> getAllCars() async {
    try {
      Response response = await dio.get('http://localhost:4242/vehicles');
      print(response.data.toString());
      return response.data;
    } catch (error) {
      print(error.toString());
    }
  }
}
