import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/AppBarWidget.dart';

class TransactionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFFFFEDD5),
            expandedHeight: 200.0,
            title: Text("0dj43334ed", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0)),
            leading: Icon(Icons.arrow_back, color: Colors.black),
            flexibleSpace: AppBarWidget()
          )
        ],

      )
    );
  }

}