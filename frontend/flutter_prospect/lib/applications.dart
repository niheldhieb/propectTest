
import 'package:flutter_prospect/configuration/data/local/app_database.dart';
import 'package:flutter_prospect/cors/local/dao/prospect_dao.dart';

//initialiser la bd et faire sa configuration
class ProspectDB {
  static ProspectDB? _instance;
  late ProspectDao prospectDao;
  late AppDatabase _prospectDb; 
  static ProspectDB getInstance() {
    return _instance ??= ProspectDB();
  }

  AppDatabase getAppDatabase() { 
    return _prospectDb; 
  }

  Future<void> init() async {
    _prospectDb = await $FloorAppDatabase.databaseBuilder('prospect.db').build(); 
    prospectDao = _prospectDb.prospectDao; // initialize  dao
  }
}
