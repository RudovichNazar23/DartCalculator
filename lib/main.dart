import 'package:flutter/material.dart';
import 'widgets/result_field.dart' show ResultField;
import 'widgets/button.dart' show Button;
import 'widgets/button_container.dart' show ButtonContainer;

void main() {
  runApp(MaterialApp(
    home: Home()
)); }

class Home extends StatelessWidget {
  final int result = 1500;

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30)
          )
        ),
        title: Text(
          "Calculator",
          style: TextStyle(
            fontFamily: "NotoSansNewa"
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ResultField()
                ]
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  ButtonContainer(
                    [
                      Button("AC", Colors.grey, 4),
                      Button("⌫", Colors.grey, 4),
                      Button("=", Colors.grey, 4)
                    ]
                  ),
                  ButtonContainer(
                      [
                        Button("1", Colors.grey, 4),
                        Button("2", Colors.grey, 4),
                        Button("3", Colors.grey, 4),
                        Button("+", Colors.grey, 4)
                      ]
                  ),
                  ButtonContainer(
                    [
                      Button("4", Colors.grey, 4),
                      Button("5", Colors.grey, 4),
                      Button("6", Colors.grey, 4),
                      Button("-", Colors.grey, 4),
                    ]
                  ),
                  ButtonContainer(
                    [
                      Button("7", Colors.grey, 4),
                      Button("8", Colors.grey, 4),
                      Button("9", Colors.grey, 4),
                      Button("*", Colors.grey, 4),
                    ]
                  ),
                  ButtonContainer(
                    [
                      Text(""),
                      Button("0", Colors.grey, 4),
                      Button(",", Colors.grey, 4),
                      Button("%", Colors.grey, 4)
                    ]
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}