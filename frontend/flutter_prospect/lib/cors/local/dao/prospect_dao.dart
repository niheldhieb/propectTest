import 'package:floor/floor.dart';
import 'package:flutter_prospect/cors/local/entity/prospect_entity.dart';

@dao
abstract class ProspectDao {
  @Query('SELECT * FROM Prospect')
  Future<List<Prospect>> findAllProspects();

  @insert
  Future<void> insertProspect(Prospect prospect);

  @update
  Future<void> updateProspect(Prospect prospect);

  @delete
  Future<void> deleteProspect(Prospect prospect);
}
