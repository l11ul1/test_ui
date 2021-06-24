import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/AppBarWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/FormWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/SetWidget.dart';

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
            child: SetWidget(
          setName: "Read Set",
        )),
        SliverToBoxAdapter(
            child: SetWidget(
          setName: "Write Set",
        )),
      ],
    ));
  }
}
