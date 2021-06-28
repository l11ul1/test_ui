import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetWidget extends StatelessWidget {
  final String setName;

  const SetWidget({this.setName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(children: [
            Text(setName,
                style: TextStyle(
                    color: Color(0xFF6e6e6e),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
          ]),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 150,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    color: Color(0xFFE3E4E6),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Text("Hello"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
