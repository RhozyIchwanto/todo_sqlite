import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseManager {
  DatabaseManager._privateConst();
  static DatabaseManager instance = DatabaseManager._privateConst();

  Database? _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await _initDB();
      return _db!;
    } else {
      return _db!;
    }
  }

  Future _initDB() async {
    // Membuat Database
    Directory docDirectory = await getApplicationDocumentsDirectory();

    String path = join(docDirectory.path, 'todo.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        return db.execute('''
            CREATE TABLE todos(
              id Integer primary key,
              title Text,
              description text 
            )
          ''');
      },
    );
  }

  Future clodeDB() async {
    _db = await instance.db;
    _db!.close();
  }
}
