import 'package:drift/drift.dart';
import 'package:glorified_todo_list/core/api/database/sql/todos.dart';

part "sql.g.dart";

@DriftDatabase(tables: [Todos])
class Sql {

}