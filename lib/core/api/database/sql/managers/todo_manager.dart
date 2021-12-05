import 'package:glorified_todo_list/core/api/database/sql/sql.dart';

class TodoManager extends Sql {
  Future<List<Todo>> get allTodos => select(todos).get();

  Stream<Todo> todoByUuid(String uuid) {
   final whereSelect = select(todos)..where((todo) => todo.uuid.equals(uuid));
   return whereSelect.watchSingle();
  }
}