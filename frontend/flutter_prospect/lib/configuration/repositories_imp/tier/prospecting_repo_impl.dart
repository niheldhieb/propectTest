import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_prospect/configuration/network/network_response/network_response.dart';
import 'package:flutter_prospect/configuration/providers/network_service_providers.dart';
import 'package:flutter_prospect/configuration/repositories/tiers/i_prospecting_repo.dart';
import 'package:flutter_prospect/configuration/services/prospecting_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IProspectingRepo)
class ProspectingRepoImpl extends IProspectingRepo with NetworkServiceProvider<Object> {
  ProspectingRepoImpl(this.dio, this.prospectingService);

  Dio dio;
  ProspectingService prospectingService;
   @override
  Future<Either<dynamic, String>> createProspecting(Map<String, dynamic> data) async {
    final networkResponse = await prospectingService.createProspecting(dio, data);
    return networkResponse.when(
      ok: (data) {
        return Left<dynamic, String>(data);
      },
      invalidParameters: (message) {  
        return Right<dynamic, String>(message);
      },
      noAuth: (message) {
        return Right<dynamic, String>(message);
      },
      noAccess: (message) {
        return Right<dynamic, String>(message);
      },
      badRequest: (message) {
        return Right<dynamic, String>(message);
      },
      notFound: (message) {
        return Right<dynamic, String>(message);
      },
      conflict: (message) {
        return Right<dynamic, String>(message);
      },
      noData: (message) {
        return Right<dynamic, String>(message);
      },
    );
  }
  
  @override
  Future<Either<dynamic, String>> listProspecting() async{
    final networkResponse= await prospectingService.listProspecting(dio);
     return networkResponse.when(
      ok: (data) {
        return Left<dynamic, String>(data);
      },
      invalidParameters: (message) {
        return Right<dynamic, String>(message);
      },
      noAuth: (message) {
        return Right<dynamic, String>(message);
      },
      noAccess: (message) {
        return Right<dynamic, String>(message);
      },
      badRequest: (message) {
        return Right<dynamic, String>(message);
      },
      notFound: (message) {
        return Right<dynamic, String>(message);
      },
      conflict: (message) {
        return Right<dynamic, String>(message);
      },
      noData: (message) {
        return Right<dynamic, String>(message);
      },
    );
  }

   
  }