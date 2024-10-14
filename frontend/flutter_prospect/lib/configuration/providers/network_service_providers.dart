import 'package:dio/dio.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter_prospect/configuration/data/model/base_model.dart';
import 'package:flutter_prospect/configuration/network/network_request/network_request.dart';
import 'package:flutter_prospect/configuration/network/network_request/prepared_network_request.dart';
import 'package:flutter_prospect/configuration/network/network_response/network_response.dart';



mixin NetworkServiceProvider<T> {
  Future<NetworkResponse<Object>> executeRequest(
    Dio dio,
    NetworkRequest request, {
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    final req = PreparedNetworkRequest(
      request,
      dio,
      request.headers!,
      onSendProgress,
      onReceiveProgress,
    );
    final result = compute(
      execute,
      req,
    );
    return result;
  }

  Future<NetworkResponse<Object>> execute(
    PreparedNetworkRequest preparedNetworkRequest,
  ) async {
    try {
      const extra = <String, dynamic>{};
      final dynamic body = preparedNetworkRequest.request.data?.whenOrNull(
        json: (data) => data,
        formData: FormData.fromMap,
      );
      final result = await preparedNetworkRequest.dio.fetch(
        _setStreamType<BaseModel<dynamic, dynamic>>(
          Options(
            method: preparedNetworkRequest.request.type,
            headers: preparedNetworkRequest.request.headers,
            extra: extra,
          )
              .compose(
                preparedNetworkRequest.dio.options,
                preparedNetworkRequest.request.path!,
                queryParameters: preparedNetworkRequest.request.queryParams,
                data: body,
              )
              .copyWith(
                baseUrl: preparedNetworkRequest.request.path ?? preparedNetworkRequest.dio.options.baseUrl,
              ),
        ),
      );
      if (T.runtimeType == BaseModel) {
        return NetworkResponse.ok(
          BaseModel<dynamic, dynamic>.fromJson(
            result.data! as Map<String, dynamic>,
          ),
        );
      } else {
        return NetworkResponse.ok(result.data!);
      }
    } on DioException catch (error) {
      final errorText = error.toString();
      print(error.stackTrace);
      switch (error.response?.statusCode) {
        case 400:
          return NetworkResponse.badRequest(errorText);
        case 401:
          return NetworkResponse.noAuth(errorText);
        case 403:
          return NetworkResponse.noAccess(errorText);
        case 404:
          return NetworkResponse.notFound(errorText);
        case 409:
          return NetworkResponse.conflict(errorText);
        default:
          return NetworkResponse.noData(errorText);
      }
    } catch (error) {
      return NetworkResponse.noData(error.toString());
    }
  }

  static RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes || requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
