import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_sqlite/provider/todos.dart';
import 'package:todo_sqlite/todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => Todos(),
        child: TodoScreen(),
      ),
    );
  }
}
