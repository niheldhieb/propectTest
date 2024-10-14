import 'package:floor/floor.dart';
import 'package:flutter_prospect/cors/local/entity/prospect_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';
import 'package:flutter_prospect/cors/local/dao/prospect_dao.dart';

part 'app_database.g.dart'; 

@Database(version: 1, entities: [Prospect])
abstract class AppDatabase extends FloorDatabase {
  ProspectDao get prospectDao;
}
  