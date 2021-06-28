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
        SizedBox(
          width: 150.0,
          child: Text(label,
              style: TextStyle(
                  color: Color(0xFF6e6e6e),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
        ),

        Expanded(
          child: Text(value, maxLines: 1,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0)),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  }
}
