import 'dart:math';

import 'package:flutter/material.dart';

class WonderScreen extends StatefulWidget {
  @override
  _WonderScreenState createState() => _WonderScreenState();
}

class _WonderScreenState extends State<WonderScreen> {
  String image = "china.png";

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
              padding: const EdgeInsets.all(36.0),
              child: Image.asset(
                'images/$image',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.blue,
                onSurface: Colors.grey,
              ),
              onPressed: () {
                var position = Random().nextInt(6);
                setState(() {
                  image = list[position];
                });
              },
              child: Text("Random"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.grey.shade300,
                onSurface: Colors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            )
          ],
        ),
        color: Colors.white,
      ),
    );
  }
}
