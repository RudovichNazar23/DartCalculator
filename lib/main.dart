import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'widgets/button.dart' show Button;
import 'widgets/button_container.dart' show ButtonContainer;

void main() {
  runApp(MaterialApp(
    home: Home()
)); }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String fieldValue = "";

  void setFieldValue(String newValue) {
    setState(() {
      fieldValue += newValue;
    });
  }

  void removeLastChar (dynamic args) {
    setState(() {
      fieldValue = fieldValue.substring(0, fieldValue.length - 1);
    });
  }

  void removeAllChars (dynamic args) {
    setState(() {
      fieldValue = "";
    });
  }

  void getResult(String expression) {
    Parser p = Parser();
    Expression exp = p.parse(fieldValue);
    ContextModel contextModel = ContextModel();

    num eval = exp.evaluate(EvaluationType.REAL, contextModel);
    String result = eval.toString();
    setState(() {
      fieldValue = result;
    });
  }

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
                      Text(
                        fieldValue,
                        style: TextStyle(
                          fontFamily: "NotoSansNewa",
                          fontSize: 30,
                        ),
                      )
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
                            Button("AC", Colors.grey, 4, removeAllChars),
                            Button("⌫", Colors.grey, 4, removeLastChar),
                            Button("=", Colors.grey, 4, getResult)
                          ]
                      ),
                      ButtonContainer(
                          [
                            Button("1", Colors.grey, 4, setFieldValue),
                            Button("2", Colors.grey, 4, setFieldValue),
                            Button("3", Colors.grey, 4, setFieldValue),
                            Button("+", Colors.grey, 4, setFieldValue)
                          ]
                      ),
                      ButtonContainer(
                          [
                            Button("4", Colors.grey, 4, setFieldValue),
                            Button("5", Colors.grey, 4, setFieldValue),
                            Button("6", Colors.grey, 4, setFieldValue),
                            Button("-", Colors.grey, 4, setFieldValue),
                          ]
                      ),
                      ButtonContainer(
                          [
                            Button("7", Colors.grey, 4, setFieldValue),
                            Button("8", Colors.grey, 4, setFieldValue),
                            Button("9", Colors.grey, 4, setFieldValue),
                            Button("*", Colors.grey, 4, setFieldValue),
                          ]
                      ),
                      ButtonContainer(
                          [
                            Text(""),
                            Button("0", Colors.grey, 4, setFieldValue),
                            Button(",", Colors.grey, 4, setFieldValue),
                            Button("%", Colors.grey, 4, setFieldValue)
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