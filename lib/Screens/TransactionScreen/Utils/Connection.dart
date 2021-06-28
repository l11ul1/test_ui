import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class Connection {
  Future<Map<String, dynamic>> getData() async {
    var client = http.Client();
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
      print(responseMap["result"]["resultData"]["chaincodeInputArgs"]);
      final sharedPreferences = await SharedPreferences.getInstance();
      final String args = sharedPreferences.getString("args");
      return responseMap;
    } catch(e) {
      client.close();
      return {"error" :  e};
    }
  }
}
