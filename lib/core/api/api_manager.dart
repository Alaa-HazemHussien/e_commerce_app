import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/utils/constants.dart';

class ApiManager {
 static Dio dio = Dio();

 static Future<Response> getData(
      {required String endPoint, required Map<String, dynamic> data}) {
    return dio.get(Constance.BaseUrl + endPoint, queryParameters: data);
  }

  static Future<Response> postData(
      {required String endPoint, required Map<String, dynamic> body}) {
    return dio.post(Constance.BaseUrl + endPoint,data:body);
  }
}
