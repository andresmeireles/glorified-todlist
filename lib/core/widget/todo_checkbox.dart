import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../api/database/sql/sql.dart';

class TodoCheckbox extends StatelessWidget {
  final Todo todo;
  final void Function(bool?)? onChange;

  const TodoCheckbox({required this.todo, this.onChange, Key? key})
      : super(key: key);

  String _date(DateTime date) {
    final day = date.day < 10 ? '0${date.day}' : date.day;
    final month = date.month < 10 ? '0${date.month}' : date.month;
    return '$day/$month/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.isFinished,
        onChanged: onChange,
      ),
      title: Text(todo.task),
      subtitle: Text('criado em ${_date(todo.createDate)}'),
    );
  }
}
