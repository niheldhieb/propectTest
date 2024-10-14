// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProspectDao? _prospectDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `Prospect` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `fullName` TEXT NOT NULL, `email` TEXT NOT NULL, `firstPhoneNumber` TEXT NOT NULL, `secondPhoneNumber` TEXT, `address` TEXT NOT NULL, `city` TEXT NOT NULL, `country` TEXT NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProspectDao get prospectDao {
    return _prospectDaoInstance ??= _$ProspectDao(database, changeListener);
  }
}

class _$ProspectDao extends ProspectDao {
  _$ProspectDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _prospectInsertionAdapter = InsertionAdapter(
            database,
            'Prospect',
            (Prospect item) => <String, Object?>{
                  'id': item.id,
                  'fullName': item.fullName,
                  'email': item.email,
                  'firstPhoneNumber': item.firstPhoneNumber,
                  'secondPhoneNumber': item.secondPhoneNumber,
                  'address': item.address,
                  'city': item.city,
                  'country': item.country
                }),
        _prospectUpdateAdapter = UpdateAdapter(
            database,
            'Prospect',
            ['id'],
            (Prospect item) => <String, Object?>{
                  'id': item.id,
                  'fullName': item.fullName,
                  'email': item.email,
                  'firstPhoneNumber': item.firstPhoneNumber,
                  'secondPhoneNumber': item.secondPhoneNumber,
                  'address': item.address,
                  'city': item.city,
                  'country': item.country
                }),
        _prospectDeletionAdapter = DeletionAdapter(
            database,
            'Prospect',
            ['id'],
            (Prospect item) => <String, Object?>{
                  'id': item.id,
                  'fullName': item.fullName,
                  'email': item.email,
                  'firstPhoneNumber': item.firstPhoneNumber,
                  'secondPhoneNumber': item.secondPhoneNumber,
                  'address': item.address,
                  'city': item.city,
                  'country': item.country
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Prospect> _prospectInsertionAdapter;

  final UpdateAdapter<Prospect> _prospectUpdateAdapter;

  final DeletionAdapter<Prospect> _prospectDeletionAdapter;

  @override
  Future<List<Prospect>> findAllProspects() async {
    return _queryAdapter.queryList('SELECT * FROM Prospect',
        mapper: (Map<String, Object?> row) => Prospect(
            id: row['id'] as int?,
            fullName: row['fullName'] as String,
            email: row['email'] as String,
            firstPhoneNumber: row['firstPhoneNumber'] as String,
            secondPhoneNumber: row['secondPhoneNumber'] as String?,
            address: row['address'] as String,
            city: row['city'] as String,
            country: row['country'] as String));
  }

  @override
  Future<void> insertProspect(Prospect prospect) async {
    await _prospectInsertionAdapter.insert(prospect, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateProspect(Prospect prospect) async {
    await _prospectUpdateAdapter.update(prospect, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteProspect(Prospect prospect) async {
    await _prospectDeletionAdapter.delete(prospect);
  }
}
