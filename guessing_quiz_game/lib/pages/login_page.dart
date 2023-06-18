import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/design.dart';
import 'package:guessing_quiz_game/pages/lobby_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LOGIN'),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Expanded(
                  flex: 1,
                  child: Image(
                    image: NetworkImage(
                        'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-cute-animal-shiba-inu-cartoon-expression-pack-available-for-commercial-use-png-image_680119.jpg'),
                    //fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your name',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_textController.text != "") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LobbyPage(name: _textController.text)));
                    }
                  },
                  child: const Text('Confirm'),
                ),
              ]),
        ));
  }
}
