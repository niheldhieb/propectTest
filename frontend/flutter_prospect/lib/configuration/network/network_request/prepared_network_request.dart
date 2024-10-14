

import 'package:dio/dio.dart';

import 'network_request.dart';

class PreparedNetworkRequest {
  const PreparedNetworkRequest(
    this.request,
    this.dio,
    this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  );

  final NetworkRequest request;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;
}
