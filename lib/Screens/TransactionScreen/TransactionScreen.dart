import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/AppBarWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/FormWidget.dart';
import 'package:ubexlab_test_ui/Screens/TransactionScreen/Widgets/SetWidget.dart';
import 'Redux/MIddleware.dart';
import 'Redux/Store.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StoreProvider.of<AppState>(context).dispatch(getJsonValuesAsync());
    return Scaffold(
        body: StoreConnector<AppState, AppState>(
            converter: (store) => store.state,
            builder: (context, state) => Scaffold(
                body: CustomScrollView(slivers: [
                  AppBarWidget(id: state.json["transactionID"],status: state.json["chaincodeInputArgs"][0] , amount: state.json["chaincodeInputArgs"][4] + ' ' + state.json["chaincodeInputArgs"][2],),
                  SliverToBoxAdapter(
                    child: FormWidget(from: state.json["chaincodeInputArgs"][1], to: state.json["chaincodeInputArgs"][3], txId: "Test", note: state.json["chaincodeInputArgs"][5]),
                  ),
                  SliverToBoxAdapter(child: SetWidget(
                    setName: "Read Set",
                  )
                  ),
                  SliverToBoxAdapter(child: SetWidget(
                    setName: "Write Set",
                  )
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 50.0),
                  ),
                ]))));
  }
}
