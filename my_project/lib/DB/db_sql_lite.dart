import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class db_sql_lite {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialdb();
    }
    return _db;
  }

  initialdb() async {
    String dbpath = await getDatabasesPath();
    String path = join(dbpath, 'newsapp.db');
    Database app_db = await openDatabase(path, onCreate: create_db, version: 1, onUpgrade: _onupgrade);
    return app_db;
  }

  _onupgrade(Database db, int oldversion, int newversion) {
    print("on upgrade====");
  }

  create_db(Database db, int version) async {
    await db.execute('''
      CREATE TABLE "Accounts" (
        "user_name" TEXT PRIMARY KEY NOT NULL,
        "full_name" TEXT,
        "email" TEXT,
        "password" TEXT
      );
    ''');
    print("create db and table");
  }

  Future<List<Map<String, dynamic>>> read_data(String sql, [List<Object?>? arguments]) async {
    Database? mydb = await db;
    return await mydb!.rawQuery(sql, arguments);
  }

  Future<int> insert_data(String sql, [List<Object?>? arguments]) async {
    Database? mydb = await db;
    return await mydb!.rawInsert(sql, arguments);
  }

  Future<int> update_data(String sql, [List<Object?>? arguments]) async {
    Database? mydb = await db;
    return await mydb!.rawUpdate(sql, arguments);
  }

  Future<int> delete_data(String sql, [List<Object?>? arguments]) async {
    Database? mydb = await db;
    return await mydb!.rawDelete(sql, arguments);
  }
}
