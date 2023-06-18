import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/design.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key, required this.name});
  final String name;
  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Welcome ${widget.name}"),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                const Image(
                    image: NetworkImage(
                        'https://drive.google.com/file/d/1CFG0XEoY2xzW_3aj4tBz5MuDkLBIh_Cf/view?usp=sharing')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 100,
                      child: TextButton(
                        onPressed: (() {
                          print('button clicked');
                        }),
                        child: const Text('Create Room'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: TextButton(
                        onPressed: (() {
                          print('button clicked');
                        }),
                        child: const Text('Enter Room'),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
