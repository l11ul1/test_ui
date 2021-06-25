import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppBarContentWidget.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        pinned: true,
        backgroundColor: Color(0xFFFFEDD5),
        expandedHeight: 200.0,
        title: Text("0dj43334ed",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
        leading: Icon(Icons.arrow_back, color: Colors.black),
        flexibleSpace: AppBarContentWidget());
  }
}
