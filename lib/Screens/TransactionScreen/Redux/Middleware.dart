import 'dart:convert';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:http/http.dart' as http;
import 'Actions.dart';
import 'Store.dart';



ThunkAction<AppState> getJsonValuesAsync(){
  return (Store<AppState> store) async {
    Uri url = Uri.parse("http://13.209.43.204:5080/block");
    var headers = {"Content-Type": "Application/json-rpc"};
    var body = json.encode({
      "jsonrpc": "2.0",
      "id": "00456",
      "method": "getTransaction",
      "params": {
        "transactionId":
        "6a28e00918a51336fb09e6f01ce9c056fd9eb452c0701d517c5f1db555ca5821"
      }
    });

    try {
      var response = await http.post(url, headers: headers, body: body);
      Map<String, dynamic> responseMap = json.decode(response.body);
      print(responseMap["result"]["resultData"]);
      store.dispatch(GetJsonAction(responseMap["result"]["resultData"]));
    } catch(e) {
      print("Fuck off");
      store.dispatch("Failed to get args");
    }
  };
}
