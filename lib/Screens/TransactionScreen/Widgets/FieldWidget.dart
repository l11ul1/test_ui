import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FieldWidget extends StatelessWidget {
  final String label;
  final String value;

  const FieldWidget({this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
        Text(value,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
