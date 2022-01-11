import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widget.dart';
import 'desktop/desktop.dart';
import 'home.dart';
import 'mobile/mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TodoBloc(),
      child: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  Widget _loadingWidget(Widget widget, TodoState state) {
    return state.ready
        ? widget
        : const Center(child: CircularProgressIndicator());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select((TodoBloc bloc) => bloc.state);
    if (!state.ready) {
      context.read<TodoBloc>().add(FetchTodosFromDbEvent());
    }

    return AppScaffold(
      title: 'menu principal',
      desktopBody: _loadingWidget(Desktop(todos: state.todos), state),
      mobileBody: _loadingWidget(const Mobile(), state),
    );
  }
}
