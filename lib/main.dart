import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
)); }

class Home extends StatelessWidget {
  final String username = "Nazar";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.red[500],
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              color: Colors.red,
              child: Text(
                "Hello",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              color: Colors.white,
              child: Text(
                "Dear",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              color: Colors.red,
              child: Text(username, style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[500],
        onPressed:  () {
          print("Clicked red button");
        },
        child: Text(
          "Button",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}