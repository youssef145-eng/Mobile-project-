import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class db_sql_lite{
static Database? _db;
Future <Database?> get db async{
  if(_db==null){
    _db=await initialdb();
    return _db;
  }
  else{
    return _db;
  }
}

  


initialdb()async{
  String dbpath=await getDatabasesPath();
  String path=join(dbpath,'newsapp.db');
  Database app_db=await openDatabase(path,onCreate:create_db ,version: 1,onUpgrade:_onupgrade );
  return app_db;
}
_onupgrade(Database db,int oldversion,int newversion){
print("on upgrade====");
}
create_db(Database db,int version) async{
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
read_data(String sql) async{
  Database? mydb=await db;
  List <Map>  response=await mydb!.rawQuery(sql);
  return response; 


}
insert_data(String sql) async{
  Database? mydb=await db;
  int  response=await mydb!.rawInsert(sql);
  return response; 


}
update_data(String sql) async{
  Database? mydb=await db;
  int response=await mydb!.rawUpdate(sql);
  return response; 


}

delete_data(String sql) async{
  Database? mydb=await db;
  int response=await mydb!.rawDelete(sql);
  return response; 


}


}