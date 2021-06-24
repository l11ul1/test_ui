import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FieldWidget.dart';

class FormWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FieldWidget(label: "From", value: "0x867"),
            FieldWidget(label: "To", value: "0x671"),
            FieldWidget(label: "TX ID", value: "0x323"),
            FieldWidget(label: "Note", value: "InputArgs[5]"),
          ],
        )
    );
  }

}