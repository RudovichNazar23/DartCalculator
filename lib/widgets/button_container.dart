import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  final List<Widget> children;
  
  const ButtonContainer( this.children, { super.key });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          ...children
        ],
      ),
    );
  }
}
