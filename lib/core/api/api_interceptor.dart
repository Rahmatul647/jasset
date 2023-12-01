// coverage:ignore-file
import 'dart:developer';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jasset/core/exception.dart';
import 'package:jasset/core/global_key_service.dart';
import 'package:jasset/core/locator.dart';
import 'package:jasset/core/presentaion/widgets/snackbar.dart';
import 'package:jasset/core/reference/constant.dart';


class ApiInterceptors extends Interceptor {
  final Dio dio;
  final FlutterSecureStorage storage;
  final DeviceInfoPlugin _deviceInfoPlugin;

  ApiInterceptors(this.dio, this.storage,
      {DeviceInfoPlugin? deviceInfoPlugin,
      })
      : _deviceInfoPlugin = deviceInfoPlugin ?? getIt<DeviceInfoPlugin>();

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var androidInfo = await _deviceInfoPlugin.androidInfo;
    String ip = '-';
   
    options.headers["Content-Type"] =
        (options.data is FormData) ? "multipart/form-data" : "application/json";

    var accessToken = await storage.read(key: cToken);
    if (options.uri.path.contains("validate-otp")) {
      accessToken = await storage.read(key: cTokenOtp);
    }

    if (accessToken != null) {
      options.headers["Authorization"] = "Bearer $accessToken";
      log("access_token $accessToken");
    }

    log("[DIO REQUEST] Url ${options.uri} ");
    log("[DIO REQUEST] Headers ${options.headers} ");

    var data = options.data ?? {};
    var mapData = data;
    mapData['ip_address'] = ip;
    mapData['device_name'] = androidInfo.model;
    mapData["browser_name"] = "Mobile";
    data = mapData;
    log("[DIO REQUEST] Data $data ");

    log("[DIO REQUEST] access_token $accessToken");
    return handler.next(options.copyWith(data: data));
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    log("[DIO RESPONSE] $response");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log("[DIO ERROR] $err, ${err.response}");
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        throw ServerException(
            message:
                'Terjadi Kesalahan, Periksa konesi internet Anda, Mohon Coba Lagi');
      case DioExceptionType.sendTimeout:
        throw ServerException(
            message:
                'Terjadi Kesalahan, Periksa konesi internet Anda, Mohon Coba Lagi');
      case DioExceptionType.receiveTimeout:
        throw ServerException(
            message:
                'Terjadi Kesalahan, Periksa konesi internet Anda, Mohon Coba Lagi');
      case DioExceptionType.connectionError:
        throw DeadlineExceededException(
            err.requestOptions, err.response?.data["data"]['message']);
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(
                err.requestOptions, err.response?.data["data"]['message']);
          case 401:
            {
              final GlobalKeyService globalKeyService =
                  getIt<GlobalKeyService>();
              // globalKeyService.navigateAndRemoveUntilTo(LoginScreen.route);
              globalKeyService.scaffoldKey.currentState?.showSnackBar(
                  errorSnackbar(
                      message: "Sesi login habis",
                      context: globalKeyService.scaffoldKey.currentContext!));
              throw UnauthorizedException(
                  err.requestOptions, err.response?.data["data"]['message']);
            }
          case 403:
            throw ForbiddenException(
                err.requestOptions, err.response?.data["data"]['message']);
          case 404:
            throw NotFoundException(
                err.requestOptions, "Terjadi Kesalahan, Mohon Coba Lagi nanti");
          case 409:
            throw ConflictException(
                err.requestOptions, err.response?.data["data"]['message']);
          case 422:
            throw InvalidInputException(
                err.requestOptions, err.response?.data["data"]['message']);
          case 500:
            throw InternalServerErrorException(
                err.requestOptions, err.response?.data["data"]['message']);
          default:
            throw DioServerException(
                err.requestOptions, 'Terjadi Kesalahan, Mohon Coba Lagi nanti');
        }

      case DioExceptionType.cancel:
        throw ServerException(message: 'Cancel');
      case DioExceptionType.badCertificate:
        throw ServerException(message: 'Bad Certificate');
      case DioExceptionType.unknown:
        throw ServerException(
            message: err.response?.data['message'] ?? 'Unknown');
    }
  }
}
