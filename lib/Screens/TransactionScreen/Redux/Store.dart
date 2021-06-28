class AppState{
  List<dynamic> args;
  Map<String, dynamic> json;

  AppState({this.json});

  AppState.copyWith({AppState prevState, Map<String, dynamic> json}){
    this.json = json ?? prevState.json;
  }

  AppState.initial(){
    this.json = {
      "chaincodeInputArgs": ["0", "0", "0", "0", "0", "0"],
      "transactionID" : "test"
    };
  }
}