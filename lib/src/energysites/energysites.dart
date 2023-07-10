import 'package:dio/dio.dart';

class EnergySites {
  final String _token;
  EnergySites(this._token);
  final Dio _dio = Dio();
}
