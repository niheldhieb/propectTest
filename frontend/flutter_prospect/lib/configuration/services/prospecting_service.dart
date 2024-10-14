import 'package:dio/dio.dart';
import 'package:flutter_prospect/configuration/data/model/base_model.dart';
import 'package:flutter_prospect/configuration/network/network_request/network_request.dart';
import 'package:flutter_prospect/configuration/network/network_request/network_request_body.dart';
import 'package:flutter_prospect/configuration/network/network_response/network_response.dart';
import 'package:flutter_prospect/configuration/providers/network_service_providers.dart';
import 'package:flutter_prospect/utils/appurls/app_urls.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@Injectable()
class ProspectingService with NetworkServiceProvider<BaseModel<dynamic, dynamic>> {
  Future<NetworkResponse<Object>> createProspecting(
    Dio dio,
    Map<String, dynamic> data,
  ) async {
    final result = await executeRequest(
      dio,
      NetworkRequest(
        data: NetworkRequestBody.json(data),
        path: AppUrls.createProspecting,
        headers: {},
        queryParams: {},
        type: NetworkRequestType.post,
      ),
    );
    return result;
  }

  Future<NetworkResponse<Object>> listProspecting(
    Dio dio,
  
  ) async {
    final result = await executeRequest(dio, 
   const NetworkRequest(path: AppUrls.listProspecting,
     queryParams: {}, 
     type: NetworkRequestType.get, 
     headers: {}));
    return result;
  }
}
