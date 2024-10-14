import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'package:flutter_prospect/configuration/network/interceptors/logger_interceptors.dart';
import 'package:injectable/injectable.dart';



@module
abstract class DioProvider {
  final BaseOptions options = BaseOptions(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    connectTimeout: const Duration(seconds: 300),
    receiveTimeout: const Duration(seconds: 300),
  );

  @singleton
  Dio dio() {
    final dio = Dio(options)
      ..interceptors.addAll([LoggerInterceptor()] )
      ..interceptors.add(
        InterceptorsWrapper(
          onError: (e, handler) async {
          
          },
        ),
      );
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (HttpClient dioClient) {
      dioClient.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return dioClient;
    };
    return dio;
  }
  
}
