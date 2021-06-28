import 'Actions.dart';
import 'Store.dart';

AppState reducers(AppState prevState, dynamic action) {

  if(action is GetJsonAction){
    print(action);
    print("In reducer");
    return AppState.copyWith(prevState: prevState, json: action.payload);
  }
  else {
    return AppState(json: prevState.json);
  }
}
