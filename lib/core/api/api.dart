// coverage:ignore-file
import 'package:dio/dio.dart';


import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jasset/core/api/api_interceptor.dart';
import 'package:jasset/core/locator.dart';

class Api {
  static String mainUrl = "https://raccoon-witty-normally.ngrok-free.app/";

  final FlutterSecureStorage storage = getIt<FlutterSecureStorage>();
  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    } else {
      var dio = Dio(
        BaseOptions(
            headers: {
              "Accept": "application/json",
            },
            baseUrl: mainUrl,
            receiveTimeout: const Duration(seconds: 15000),
            connectTimeout: const Duration(seconds: 15000),
            sendTimeout: const Duration(seconds: 15000)),
      );
      dio.interceptors.addAll({ApiInterceptors(dio, storage)});
      return dio;
    }
  }

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;
}
