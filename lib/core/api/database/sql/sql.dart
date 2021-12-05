import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:glorified_todo_list/core/api/database/sql/models/todos.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'sql.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Todos])
class Sql extends _$Sql {
  Sql(): super(_openConnection());

  @override
  int get schemaVersion => 1;
}