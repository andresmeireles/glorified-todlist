import 'package:flutter/material.dart';
import 'package:glorified_todo_list/features/home/home.dart';

void main() {
  runApp(const GlorifiedNotepadApp());
}

class GlorifiedNotepadApp extends StatelessWidget {
  const GlorifiedNotepadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Glorified Notepad',
      home: HomeView(),
    );
  }
}
