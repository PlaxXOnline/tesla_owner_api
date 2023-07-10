import 'dart:convert';

import 'package:dio/dio.dart';

class Products {
  final String _token;
  Products(this._token);
  final Dio _dio = Dio();

  /// Fetches a list of products.
  ///
  /// Returns a `Response` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Response> getProducts(String commandToken) async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/products',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to fetch Products Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Products Data: $e');
    }
  }
}
