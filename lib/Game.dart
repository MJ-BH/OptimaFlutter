import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameView(),
    );
  }
}

class GameView extends StatefulWidget {
  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  String image = "6-min-min.jpg";
  List<int> list2 = List.generate(15, (index) => index * index);
  List<String> list = List.of({
    "china.png",
    "england.png",
    "europe.png",
    "italy.png",
    "mexico.png",
    "petra.png"
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Container(
                width: double.infinity,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/$image'),
                  radius: 300,
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.cyan,
                ),
                child: Text("random"),
                onPressed: () {
                  var postion = Random().nextInt(6);
                  setState(() {
                    image = list[postion];
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.blue[400],
                ),
                child: Text("Back"),
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ),
          )
        ],
      ),
    ));
  }
}
