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
      body: Center(
        child: TextButton.icon(
            onPressed: () {
              print("Searching...");
            },
            label: Text("Search"),
            icon: Icon(
              Icons.search,
              color: Colors.purple[500],
              size: 30,
            ),
        )
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