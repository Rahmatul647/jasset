// coverage:ignore-file
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:jasset/core/api/api.dart';
import 'package:jasset/core/exception.dart';



class ApiService {
  static ApiService? _instance;

  Api api = Api();

  factory ApiService() => _instance ?? ApiService._();

  ApiService._();

  Future<Response<T>> get<T>(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
   
      return await api.dio
          .get<T>(url, queryParameters: queryParameters, data: data);
    
  }

  Future<Response<T>> post<T>(String url,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
   
    throw NoInternetConnectionException(RequestOptions(),
        "Tidak ada koneksi internet, pastikan perangkat anda terhubung ke internet dan coba lagi.");
  }

  void useAccessToken(String? token) {
    if (token != null && token.isNotEmpty) {
      api.dio.options.headers["Authorization"] = "Bearer $token";
      api.dio.options.headers[HttpHeaders.contentTypeHeader] =
          "application/json";
    } else {
      api.dio.options.headers.remove(HttpHeaders.authorizationHeader);
    }
  }
}
