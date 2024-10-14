import 'package:either_dart/either.dart';

abstract class IProspectingRepo{
    Future<Either<dynamic, String>> createProspecting(Map<String, dynamic> data);
    Future<Either<dynamic,String>> listProspecting ();
}