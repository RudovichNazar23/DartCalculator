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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(5),
            child: Text("Hello $username", style: TextStyle(color: Colors.black),),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Click", style: TextStyle(color: Colors.black,)),
          ),
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(5),
            child: Text("Container", style: TextStyle(color: Colors.white),),
          )
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