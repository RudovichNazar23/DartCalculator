import 'package:flutter/cupertino.dart';
import '../widgets/result_field.dart' show ResultField;

class ResultFieldState extends State<ResultField> {
  final String _value = "1500";

  @override
  Widget build(BuildContext context){
    return Text(
      _value,
      style: TextStyle(
        fontFamily: "NotoSansNewa",
        fontSize: 30,
      ),
    );
  }
}
