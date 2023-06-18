import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/design.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textController = TextEditingController();

  void _printInputText() {
    print(_textController.text);
  }

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
                Expanded(
                  flex: 1,
                  child: Container(
                      child: const Image(
                    image: NetworkImage(
                        'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-cute-animal-shiba-inu-cartoon-expression-pack-available-for-commercial-use-png-image_680119.jpg'),
                    //fit: BoxFit.contain,
                  )),
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
                  onPressed: _printInputText,
                  child: const Text('Confirm'),
                ),
              ]),
        ));
  }
}
