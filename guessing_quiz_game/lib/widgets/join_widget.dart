import 'package:flutter/material.dart';

class Join extends StatelessWidget {
  const Join({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Join room',
          selectionColor: Color.fromARGB(0, 255, 0, 0),
        ),
        Container(
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
