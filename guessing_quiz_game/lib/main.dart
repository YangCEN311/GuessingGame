import 'package:flutter/material.dart';
import 'pages/lobby_page.dart';
import 'pages/login_page.dart';
import 'widgets/join_widget.dart';
import 'design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Listener(
      //Enable user to tap blank space to close the keypad
      onPointerUp: (_) {
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const LobbyPage(
          name: "Admin",
        ),
      ),
    );
  }
}
