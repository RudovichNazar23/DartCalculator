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
        child: Image.network("https://starwalk.space/gallery/images/what-is-space/1140x641.jpg")
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[500],
        onPressed:  () {},
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