import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/api/database/sql/sql.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_status.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial()) {
    on<FetchTodosFromDbEvent>(_fetchTodosFromDb);
  }

  Future<void> _fetchTodosFromDb(
    FetchTodosFromDbEvent event,
    Emitter emit,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    final todos = [
      Todo(
        uuid: 'uuid',
        task: 'task',
        createDate: DateTime.now(),
        finishedDate: DateTime.now(),
        isFinished: false,
      )
    ];
    emit(TodosFromDb(todos));
  }
}
