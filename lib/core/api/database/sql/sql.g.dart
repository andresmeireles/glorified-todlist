// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sql.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Todo extends DataClass implements Insertable<Todo> {
  final String uuid;
  final String task;
  final DateTime createDate;
  final DateTime finishedDate;
  final bool isFinished;
  Todo(
      {required this.uuid,
      required this.task,
      required this.createDate,
      required this.finishedDate,
      required this.isFinished});
  factory Todo.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Todo(
      uuid: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}uuid'])!,
      task: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}task'])!,
      createDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      finishedDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}finished_at'])!,
      isFinished: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_finished'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    map['task'] = Variable<String>(task);
    map['created_at'] = Variable<DateTime>(createDate);
    map['finished_at'] = Variable<DateTime>(finishedDate);
    map['is_finished'] = Variable<bool>(isFinished);
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      uuid: Value(uuid),
      task: Value(task),
      createDate: Value(createDate),
      finishedDate: Value(finishedDate),
      isFinished: Value(isFinished),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Todo(
      uuid: serializer.fromJson<String>(json['uuid']),
      task: serializer.fromJson<String>(json['task']),
      createDate: serializer.fromJson<DateTime>(json['createDate']),
      finishedDate: serializer.fromJson<DateTime>(json['finishedDate']),
      isFinished: serializer.fromJson<bool>(json['isFinished']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'task': serializer.toJson<String>(task),
      'createDate': serializer.toJson<DateTime>(createDate),
      'finishedDate': serializer.toJson<DateTime>(finishedDate),
      'isFinished': serializer.toJson<bool>(isFinished),
    };
  }

  Todo copyWith(
          {String? uuid,
          String? task,
          DateTime? createDate,
          DateTime? finishedDate,
          bool? isFinished}) =>
      Todo(
        uuid: uuid ?? this.uuid,
        task: task ?? this.task,
        createDate: createDate ?? this.createDate,
        finishedDate: finishedDate ?? this.finishedDate,
        isFinished: isFinished ?? this.isFinished,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('uuid: $uuid, ')
          ..write('task: $task, ')
          ..write('createDate: $createDate, ')
          ..write('finishedDate: $finishedDate, ')
          ..write('isFinished: $isFinished')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(uuid, task, createDate, finishedDate, isFinished);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          other.uuid == this.uuid &&
          other.task == this.task &&
          other.createDate == this.createDate &&
          other.finishedDate == this.finishedDate &&
          other.isFinished == this.isFinished);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<String> uuid;
  final Value<String> task;
  final Value<DateTime> createDate;
  final Value<DateTime> finishedDate;
  final Value<bool> isFinished;
  const TodosCompanion({
    this.uuid = const Value.absent(),
    this.task = const Value.absent(),
    this.createDate = const Value.absent(),
    this.finishedDate = const Value.absent(),
    this.isFinished = const Value.absent(),
  });
  TodosCompanion.insert({
    required String uuid,
    required String task,
    required DateTime createDate,
    required DateTime finishedDate,
    required bool isFinished,
  })  : uuid = Value(uuid),
        task = Value(task),
        createDate = Value(createDate),
        finishedDate = Value(finishedDate),
        isFinished = Value(isFinished);
  static Insertable<Todo> custom({
    Expression<String>? uuid,
    Expression<String>? task,
    Expression<DateTime>? createDate,
    Expression<DateTime>? finishedDate,
    Expression<bool>? isFinished,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (task != null) 'task': task,
      if (createDate != null) 'created_at': createDate,
      if (finishedDate != null) 'finished_at': finishedDate,
      if (isFinished != null) 'is_finished': isFinished,
    });
  }

  TodosCompanion copyWith(
      {Value<String>? uuid,
      Value<String>? task,
      Value<DateTime>? createDate,
      Value<DateTime>? finishedDate,
      Value<bool>? isFinished}) {
    return TodosCompanion(
      uuid: uuid ?? this.uuid,
      task: task ?? this.task,
      createDate: createDate ?? this.createDate,
      finishedDate: finishedDate ?? this.finishedDate,
      isFinished: isFinished ?? this.isFinished,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (task.present) {
      map['task'] = Variable<String>(task.value);
    }
    if (createDate.present) {
      map['created_at'] = Variable<DateTime>(createDate.value);
    }
    if (finishedDate.present) {
      map['finished_at'] = Variable<DateTime>(finishedDate.value);
    }
    if (isFinished.present) {
      map['is_finished'] = Variable<bool>(isFinished.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('uuid: $uuid, ')
          ..write('task: $task, ')
          ..write('createDate: $createDate, ')
          ..write('finishedDate: $finishedDate, ')
          ..write('isFinished: $isFinished')
          ..write(')'))
        .toString();
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TodosTable(this._db, [this._alias]);
  final VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  late final GeneratedColumn<String?> uuid = GeneratedColumn<String?>(
      'uuid', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _taskMeta = const VerificationMeta('task');
  late final GeneratedColumn<String?> task = GeneratedColumn<String?>(
      'task', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _createDateMeta = const VerificationMeta('createDate');
  late final GeneratedColumn<DateTime?> createDate = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _finishedDateMeta =
      const VerificationMeta('finishedDate');
  late final GeneratedColumn<DateTime?> finishedDate =
      GeneratedColumn<DateTime?>('finished_at', aliasedName, false,
          typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _isFinishedMeta = const VerificationMeta('isFinished');
  late final GeneratedColumn<bool?> isFinished = GeneratedColumn<bool?>(
      'is_finished', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (is_finished IN (0, 1))');
  @override
  List<GeneratedColumn> get $columns =>
      [uuid, task, createDate, finishedDate, isFinished];
  @override
  String get aliasedName => _alias ?? 'todos';
  @override
  String get actualTableName => 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('task')) {
      context.handle(
          _taskMeta, task.isAcceptableOrUnknown(data['task']!, _taskMeta));
    } else if (isInserting) {
      context.missing(_taskMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
          _createDateMeta,
          createDate.isAcceptableOrUnknown(
              data['created_at']!, _createDateMeta));
    } else if (isInserting) {
      context.missing(_createDateMeta);
    }
    if (data.containsKey('finished_at')) {
      context.handle(
          _finishedDateMeta,
          finishedDate.isAcceptableOrUnknown(
              data['finished_at']!, _finishedDateMeta));
    } else if (isInserting) {
      context.missing(_finishedDateMeta);
    }
    if (data.containsKey('is_finished')) {
      context.handle(
          _isFinishedMeta,
          isFinished.isAcceptableOrUnknown(
              data['is_finished']!, _isFinishedMeta));
    } else if (isInserting) {
      context.missing(_isFinishedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Todo map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Todo.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(_db, alias);
  }
}

abstract class _$Sql extends GeneratedDatabase {
  _$Sql(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TodosTable todos = $TodosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}
