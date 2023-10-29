import 'package:dio/dio.dart';
import 'package:e_commerce_c9_sunday/core/utils/constants.dart';

class ApiManager {
  Dio dio = Dio();

  Future<Response> getData(String endPoint, {Map<String, dynamic>? data}) {
    return dio.get(Constants.baseUrl + endPoint, queryParameters: data);
  }

  Future<Response> postData(String endPoint, Map<String, dynamic>? body) {
    return dio.get(Constants.baseUrl + endPoint, data: body);
  }
}
