import 'package:flutter/material.dart';

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text('coluna 1'),
        const Text('coluna 2'),
        const Text('coluna 2'),
      ],
    );
  }
}
