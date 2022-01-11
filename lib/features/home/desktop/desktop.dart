import 'package:flutter/material.dart';

import '../../../core/api/database/sql/sql.dart' as sql;
import '../home.dart';

abstract class TodoList {
  List<sql.Todo> get todos;
}

class Desktop extends StatelessWidget implements TodoList {
  @override
  final List<sql.Todo> todos;

  const Desktop({required this.todos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Text('coluna 1'),
        Flexible(child: Todos(todos: todos)),
        // Text('coluna 2'),
      ],
    );
  }
}
