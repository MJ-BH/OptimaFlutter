import 'package:flutter/material.dart';
import 'package:myfirstapplication/Game.dart';
import 'package:myfirstapplication/Screen.dart';
import 'Components.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/home': (_) => MyApp(),
      '/Game': (_) => Game(),
      '/Screen': (context) => Screen2()
    },
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
              Container(
                width: double.infinity,
                height: 42,
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side:
                              BorderSide(color: Colors.deepPurple, width: 6))),
                  onPressed: () => {
                    print("Test"),
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Game();
                      }),
                    )
                  },
                  child: Text("Go to the Game "),
                ),
              ),
              Container(
                width: double.infinity,
                height: 42,
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(color: Colors.black, width: 6))),
                  onPressed: () =>
                      {print("Test"), Navigator.pushNamed(context, '/Screen')},
                  child: Text("Go to Screen 2"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
