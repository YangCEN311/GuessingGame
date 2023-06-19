import 'package:flutter/material.dart';

class Question {
  String question = '';
  String optionA = '';
  String optionB = '';
  String optionC = '';
  String answer = '';
  Question(
      {required this.question,
      required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.answer});
}
