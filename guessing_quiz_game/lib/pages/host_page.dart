import 'package:flutter/material.dart';
import 'package:guessing_quiz_game/model/user.dart';
import 'package:guessing_quiz_game/pages/gamelobby_page.dart';

class HostPage extends StatefulWidget {
  const HostPage({super.key, required this.name});
  final String name;

  @override
  State<HostPage> createState() => _HostPageState();
}

class _HostPageState extends State<HostPage> {
  final TextEditingController _addrController = TextEditingController();
  final TextEditingController _portController = TextEditingController();

  UserStates gethostState() {
    return UserStates(
        name: widget.name,
        ipadrr: _addrController.text,
        port: int.parse(_portController.text),
        score: 0,
        ishost: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sever Host Setting'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: <Widget>[
          const Expanded(
            flex: 1,
            child: Image(
              image: NetworkImage(
                  'https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-cute-animal-shiba-inu-cartoon-expression-pack-available-for-commercial-use-png-image_680119.jpg'),
              //fit: BoxFit.contain,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.white30)),
            //color: Colors.white30,
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'IPaddress',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TextField(
                    controller: _addrController,
                    decoration: const InputDecoration(
                      hintText: 'type your addr',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Port',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: TextField(
                    controller: _portController,
                    decoration: const InputDecoration(
                      hintText: 'type your port',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_addrController.text != "" &&
                        _portController.text != "") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GamelobbyPage(
                              name: widget.name, states: gethostState()),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
