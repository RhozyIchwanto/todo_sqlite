import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_sqlite/add_todo.dart';
import 'package:todo_sqlite/provider/todos.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChangeNotifierProvider(
                create: (context) => Todos(),
                child: AddTodo(),
              ),
            ),
          );
        },
        child: Icon(
          Icons.add_task,
        ),
      ),
      appBar: AppBar(
        title: Text("Todo"),
      ),
      body: Center(),
    );
  }
}
