import 'package:dio/dio.dart';

class ApiServices {
  final _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var respose = await dio.get('$_baseURL$endPoint');
    return respose.data;
  }
}
