import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/pages/host_page.dart';
import 'package:guessing_quiz_game/pages/guest_page.dart';

class LobbyPage extends StatefulWidget {
  const LobbyPage({super.key, required this.name});
  final String name;
  @override
  State<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends State<LobbyPage> {
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
                const Expanded(
                  flex: 1,
                  child: Image(
                      image: NetworkImage(
                          'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-cute-animal-shiba-inu-cartoon-expression-pack-available-for-commercial-use-png-image_680119.jpg')),
                ),
                const Text(
                  'Choose Mode',
                  style: TextStyle(color: Colors.red, fontSize: 20.0),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HostPage(name: widget.name)));
                          }),
                          child: const Text('Create Room'),
                        ),
                      ),
                      Container(width: 50),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        GuestPage(name: widget.name)));
                          }),
                          child: const Text('Enter Room'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
