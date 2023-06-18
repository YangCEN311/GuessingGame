import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/userstates/user.dart';

class GamelobbyPage extends StatefulWidget {
  const GamelobbyPage({super.key, required this.states});
  final UserStates states;
  @override
  State<GamelobbyPage> createState() => _GamelobbyPageState();
}

class _GamelobbyPageState extends State<GamelobbyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
