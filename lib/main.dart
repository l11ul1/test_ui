import 'package:flutter/material.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/TransactionScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: TransactionScreen()
    );
  }
}


