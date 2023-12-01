// coverage:ignore-file
import 'package:dio/dio.dart';

class ServerException implements Exception {
  final String message;

  ServerException({required this.message});

  @override
  String toString() {
    return message;
  }
}

class CacheException implements Exception {
  final String message;

  CacheException({required this.message});

  @override
  String toString() {
    return message;
  }
}

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ?? 'Permintaan tidak valid.';
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ??
        'Terjadi kesalahan yang tidak diketahui, harap coba lagi nanti.';
  }
}

class ForbiddenException extends DioException {
  ForbiddenException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ?? "Forbidden Access";
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ?? 'Konflik terjadi.';
  }
}

class InvalidInputException extends DioException {
  InvalidInputException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ?? 'Masukan tidak valid.';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ?? 'Akses ditolak.';
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ?? 'Informasi yang diminta tidak dapat ditemukan.';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return message ??
        'Tidak ada koneksi internet yang terdeteksi, silakan coba lagi.';
  }
}

class DeadlineExceededException extends DioException {
  DeadlineExceededException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return 'Sambungan telah kehabisan waktun, harap coba lagi.';
  }
}
class DioServerException extends DioException {
  DioServerException(RequestOptions r, String? message)
      : super(requestOptions: r, message: message);

  @override
  String toString() {
    return 'Sambungan telah kehabisan waktun, harap coba lagi.';
  }
}

class CacheEmptyException implements CacheException {
  CacheEmptyException();
  @override
  String toString() {
    return 'Cache kosong.';
  }

  @override
  String get message => toString();
}

class UnverifiedException implements Exception {
  UnverifiedException();

  @override
  String toString() {
    return 'Pengguna Belum Terverifikasi';
  }
}

class DataIncompleteException implements Exception {
  DataIncompleteException();
}

class DocsIncompleteException implements Exception {
  DocsIncompleteException();
}

class OtpVerifyNotMatchException implements Exception {
  OtpVerifyNotMatchException();
  @override
  String toString() {
    return "Kode OTP salah";
  }
}

extension _AsOptions on RequestOptions {
  Options asOptions() {
    return Options(
      method: method,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
      extra: extra,
      headers: headers,
      responseType: responseType,
      contentType: contentType,
      validateStatus: validateStatus,
      receiveDataWhenStatusError: receiveDataWhenStatusError,
      followRedirects: followRedirects,
      maxRedirects: maxRedirects,
      requestEncoder: requestEncoder,
      responseDecoder: responseDecoder,
      listFormat: listFormat,
    );
  }
}
