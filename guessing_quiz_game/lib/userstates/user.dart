import 'package:flutter/material.dart';

class UserStates {
  String name;
  String ipadrr;
  int port;
  double score;
  bool ishost;
  final Map<int, UserStates> playerlist = Map<int, UserStates>();
  UserStates(
      {required this.name,
      required this.ipadrr,
      required this.port,
      required this.score,
      required this.ishost});
}
