import 'package:dio/dio.dart';

import '../../shared/Components/components.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: 'http://localhost:4242/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    String? token,
    String lang = 'ar',
    //   required Map<String, dynamic> query,
  }) async {
    dio.options.queryParameters = {};
    dio.options.headers = {
      'lang': lang,
      'Content-Type': 'application/json',
      //'Authorization':
      //  'LkAlozwNUpmVJpTTPnoxkRn5Az4kQj9n496uvRFcoN2Q5o4WtGUbRhayIwpjq6CDOnPMU5',
    };
    return await dio.get(
      url,
    );
  }

  static Future<Response> postData({
    //String? url,
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    dio.options.headers = {};
    return dio.post(
      url,
      //queryParameters: query,
      data: data,
    );
  }
}
