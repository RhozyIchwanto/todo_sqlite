import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_sqlite/db/database_manager.dart';

class Todos with ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController deskController = TextEditingController();

  DatabaseManager database = DatabaseManager.instance;

  void addTodo() async {
    Database db = await database.db;

    await db.insert(
      'todos',
      {
        'title': titleController.text,
        'description': deskController.text,
      },
    );
  }
}
