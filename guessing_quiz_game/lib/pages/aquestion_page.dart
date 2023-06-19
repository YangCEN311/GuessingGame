import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/model/question.dart';

class AquestionPage extends StatelessWidget {
  AquestionPage({super.key, required this.question});
  final Question question;
  final TextEditingController ans = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void popans(String s) {
      Navigator.pop(context, s);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose an Answer'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Question',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    question.question,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Option A',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    question.optionA,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Option B',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    question.optionB,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Option C',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    question.optionC,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          popans('A');
                        },
                        child: const Text('A'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          popans('B');
                        },
                        child: const Text('B'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          popans('C');
                        },
                        child: const Text('C'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
