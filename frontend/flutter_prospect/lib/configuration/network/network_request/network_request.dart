
import 'network_request_body.dart';

class NetworkRequest {
  const NetworkRequest({
    this.type,
    this.path,
    this.data,
    this.queryParams,
    this.headers,
  });

  final String? type;
  final String? path;
  final NetworkRequestBody? data;
  final Map<String, dynamic>? queryParams;
  final Map<String, String>? headers;
}

abstract class NetworkRequestType {
  static const post = 'POST';
  static const get = 'GET';
  static const delete = 'DELETE';
  static const patch = 'PATCH';
  static const put = 'PUT';
}
