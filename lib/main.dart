import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/TransactionScreen.dart';
import 'package:redux/redux.dart';
import 'Screens/TransactionScreen/Redux/Reducers.dart';
import 'Screens/TransactionScreen/Redux/Store.dart';

void main() {
  Store<AppState> _store = Store(reducers, initialState: AppState.initial(), middleware: [thunkMiddleware]);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {
  final Store store;

  const MyApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(title: 'I am gonna cry', home: TransactionScreen()),
    );
  }
}
