import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Components {
  var myStyle = GoogleFonts.poppins(
      color: Colors.grey[700], fontSize: 36, fontWeight: FontWeight.bold);
  myAvatar() {
    return CircleAvatar(
      backgroundImage: AssetImage('images/me.jpg'),
      radius: 80,
    );
  }

  myText(String text, TextStyle myStyle) {
    return new Text(
      text,
      style: myStyle,
    );
  }

  myCard(String text, IconData icon, double size) {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          leading: Icon(icon, color: Colors.teal, size: size),
          title: Text(text),
          trailing: Icon(Icons.airline_seat_individual_suite_rounded),
        ),
      ),
    );
  }

  myButton(Future click) {
    return Container(
      width: double.infinity,
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: ElevatedButton(
        style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(color: Colors.deepPurple, width: 6))),
        onPressed: () => {print("Test"), click},
        child: Text("Go to the Game "),
      ),
    );
  }
}
