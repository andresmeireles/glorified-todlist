import 'package:drift/drift.dart';

class Todos extends Table {
  TextColumn get uuid => text()();
  TextColumn get task => text()();
  DateTimeColumn get createDate => dateTime().named('created_at')();
  DateTimeColumn get finishedDate => dateTime().named('finished_at')();
  BoolColumn get isFinished => boolean().named('is_finished')();
}
