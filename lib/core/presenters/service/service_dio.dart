import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/core/infra/api.dart';

class DioServices {
  static Dio dio = Dio(BaseOptions(
    baseUrl: Api.baseUrl,
    connectTimeout: const Duration(milliseconds: 5000),
    receiveTimeout: const Duration(milliseconds: 3000),
  ));

  static Future<Response> get(String url) async {
    //debugPrint('url: $url');
    try {
      final response = await dio.get(url);
      return response;
    } on DioException catch (e) {
      debugPrint('Dio error: ${e.message}');
      rethrow;
    }
  }
}
