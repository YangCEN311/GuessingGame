import 'dart:io';

import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/model/question.dart';
import 'package:guessing_quiz_game/model/user.dart';
import 'package:guessing_quiz_game/pages/squestion_page.dart';
import 'package:guessing_quiz_game/pages/aquestion_page.dart';

class GamelobbyPage extends StatefulWidget {
  const GamelobbyPage({super.key, required this.name, required this.states});
  final UserStates states;
  final String name;

  @override
  State<GamelobbyPage> createState() => _GamelobbyPageState();
}

class _GamelobbyPageState extends State<GamelobbyPage> {
  List<UserStates> plylist = [
    UserStates(name: 'tom', ipadrr: '123', port: 456, score: 0, ishost: false),
    UserStates(name: 'Sandy', ipadrr: '456', port: 789, score: 0, ishost: false)
  ];

  Question ques = Question(
      question: '1+1= ?',
      optionA: '1',
      optionB: '2',
      optionC: '3',
      answer: 'A');
  List<String> testlist = [];
  bool listening = false;
  void startlisten() async {
    final serversoc = await ServerSocket.bind(
        InternetAddress(widget.states.ipadrr), widget.states.port);
    setState(() {
      plylist[1].score = 1234;
    });
  }

  void handleclient(Socket clientsocket) {
    clientsocket.listen((data) {
      final message = String.fromCharCodes(data).trim();
      setState(() {
        plylist[0].name = message;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.states.ishost == true && listening == false) {
      //將自己加入名單
      if (plylist.any((element) => element != widget.states)) {
        plylist.add(widget.states);
      }

      print('start');
      listening = true;
      startlisten();
    }

    return Scaffold(
      appBar: AppBar(title: const Text('GameRoom')),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              child: Image(
                  image: NetworkImage(
                      'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-cute-animal-shiba-inu-cartoon-expression-pack-available-for-commercial-use-png-image_680119.jpg')),
            ),
            ListTile(
              title: const Text('Send Question'),
              onTap: () async {
                final result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SquestionPage()));
                ques = result;
                setState(() {
                  plylist[0].name = ques.question;
                });
              },
            ),
            ListTile(
              title: const Text('Answer Question'),
              onTap: () async {
                final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => AquestionPage(question: ques))));
                setState(() {
                  plylist[1].name = result;
                });
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3.0),
          ),
          child: ListView.builder(
            itemCount: plylist.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(plylist[index].name),
                subtitle: Text('${plylist[index].score}'),
              );
            },
          ),
        ),
      ),
    );
  }
}
