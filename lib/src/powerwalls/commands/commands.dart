import 'package:dio/dio.dart';

class Commands {
  final String _token;
  Commands(this._token);

  final Dio _dio = Dio();
}
