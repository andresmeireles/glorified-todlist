import 'package:flutter/material.dart';
import 'package:glorified_todo_list/core/widgets/app_scaffold.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'menu principal',
      desktopBody: Center(child: Text('desktop'),),
      mobileBody: Center(child: Text('mobile'),),
    );
  }
}
