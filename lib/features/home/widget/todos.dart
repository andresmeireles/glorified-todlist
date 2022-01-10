import 'package:flutter/material.dart';

import '../../../core/api/database/sql/sql.dart';

class Todos extends StatelessWidget {
  final List<Todo> todos;

  const Todos({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final todo = todos[index];

        return ListTile(
          leading: Text(todo.isFinished ? 'finalizado' : 'em aberto'),
          title: Text(todo.task),
          subtitle: Text('criado em ${todo.createDate}'),
        );
      },
      itemCount: todos.length,
    );
  }
}
