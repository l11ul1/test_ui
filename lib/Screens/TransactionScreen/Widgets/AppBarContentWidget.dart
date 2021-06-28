import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarContentWidget extends StatelessWidget {
  final String status;
  final String amount;

  AppBarContentWidget({this.status, this.amount});

  @override
  Widget build(BuildContext context) {
    final double parentHeight = MediaQuery.of(context).padding.top;

    return FlexibleSpaceBar(
        centerTitle: false,
        background: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            padding: EdgeInsets.only(top: parentHeight + 50),
            child: Column(children: [
              Row(
                children: [
                  Icon(Icons.arrow_circle_up_rounded, color: Colors.black),
                  Text(status,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                  SizedBox(height: 70.0),
                ],
              ),
              Row(
                children: [
                  Text(amount,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),
                ],
              )
            ])));
  }
}
