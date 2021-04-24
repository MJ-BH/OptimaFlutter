import 'package:flutter/material.dart';
import 'Components.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var comp = Components();
    return Material(
      child: Scaffold(
        backgroundColor: Colors.teal[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: comp.myAvatar()),
              comp.myText("Optima", comp.myStyle),
              comp.myText("Juinior Enreprise ", comp.myStyle),
              comp.myCard("+252525255", Icons.phone, 24),
              comp.myCard("mail@mail.com ", Icons.mail, 24),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.white,
                  indent: 36,
                  endIndent: 36,
                  height: 12,
                ),
              ),
              comp.myButton(),
            ],
          ),
        ),
      ),
    );
  }
}
