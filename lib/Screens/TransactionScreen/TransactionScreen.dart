import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/AppBarContentWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/AppBarWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/FieldWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/FormWidget.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        AppBarWidget(),
        SliverToBoxAdapter(
          child: FormWidget(),
        ),
        SliverToBoxAdapter(
            child: Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
            children: [
              Row(
                children:[
                  Text("Set Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ]
              )
            ],
          ),
        ))
      ],
    ));
  }
}
