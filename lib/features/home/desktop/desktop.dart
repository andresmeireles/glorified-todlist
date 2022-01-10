import 'package:flutter/material.dart';

import '../../../core/api/database/sql/sql.dart' as sql;
import '../home.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Text('coluna 1'),
        Flexible(
          child: Todos(
            todos: [
              sql.Todo(
                createDate: DateTime.now(),
                finishedDate: DateTime.now(),
                isFinished: false,
                task: 'Qalquer coisa',
                uuid: '22aa',
              ),
            ],
          ),
        ),
        // Text('coluna 2'),
      ],
    );
  }
}
