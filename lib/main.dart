import 'dart:io';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.blue,
                width: 100,
                child: Center(
                  child: Text("Where"),
                )
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(5),
                width: 100,
                child: Center(
                  child: Text("Where"),
                )
              ),
              Container(
                color: Colors.purple,
                padding: EdgeInsets.all(5),
                width: 100,
                child: Center(
                  child: Text("Where"),
                )
              )
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.amber,
                  width: 100,
                  child: Center(
                    child: Text("Where"),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.cyanAccent,
                  width: 100,
                  child: Center(
                    child: Text("Where"),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.deepOrange,
                  width: 100,
                  child: Center(
                    child: Text("Where"),
                  )
                )
              ]
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.red,
                  width: 100,
                  child: Center(
                    child: Text("Where"),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  width: 100,
                  child: Center(
                    child: Text("Where"),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.red,
                  width: 100,
                  child: Center(
                    child: Text("Where"),
                  )
                )
              ]
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