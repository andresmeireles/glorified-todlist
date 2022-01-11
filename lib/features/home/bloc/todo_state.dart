part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  final List<Todo> todos;
  final TodoStatus todoStatus;

  const TodoState({required this.todos, required this.todoStatus});

  @override
  List<Object> get props => [todos, todoStatus];

  bool get ready => todoStatus == TodoStatus.success;
}

class TodoInitial extends TodoState {
  TodoInitial() : super(todos: [], todoStatus: TodoStatus.idle);
}

class TodosFromDb extends TodoState {
  const TodosFromDb(List<Todo> todos)
      : super(todos: todos, todoStatus: TodoStatus.success);
}
