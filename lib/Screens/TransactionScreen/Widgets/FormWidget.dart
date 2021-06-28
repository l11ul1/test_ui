import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FieldWidget.dart';

class FormWidget extends StatelessWidget{
  final String from;
  final String to;
  final String txId;
  final String note;

  FormWidget({this.from, this.to, this.txId, this.note});

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
            FieldWidget(label: "From", value: from),
            FieldWidget(label: "To", value: to),
            FieldWidget(label: "TX ID", value: txId),
            FieldWidget(label: "Note", value: note),
          ],
        )
    );
  }

}