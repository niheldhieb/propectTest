import 'package:dio/dio.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("---------- Request ----------");
    print("Method: ${options.method}");
    print("URL: ${options.uri}");
    print("Headers: ${options.headers}");
    if (options.data != null) {
      print("Request Body: ${options.data}");
    }
    print("------------------------------");
    
   
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("---------- Response ----------");
    print("Status Code: ${response.statusCode}");
    print("Data: ${response.data}");
    print("------------------------------");

    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print("---------- Error ----------");
    print("Error Message: ${err.message}");
    print("Response: ${err.response}");
    print("----------------------------");

    super.onError(err, handler);
  }
}
