import 'package:dio/dio.dart';

class dioHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'https://newsapi.org/', receiveDataWhenStatusError: true),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.post(
      url,
      queryParameters: query,
    );
  }
}
