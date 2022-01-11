import 'package:flutter/material.dart';

import '../../../core/api/database/sql/sql.dart';
import '../../../core/widget.dart';

class Todos extends StatelessWidget {
  final List<Todo> todos;

  const Todos({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final todo = todos[index];

        return TodoCheckbox(todo: todo);
      },
      itemCount: todos.length,
    );
  }
}
