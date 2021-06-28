abstract class Action{}

class Convert extends Action{}

class UpdateKm extends Action{
  String payload;

  UpdateKm(this.payload);
}

class UpdateKmCleaned extends Action{
  String payload;

  UpdateKmCleaned(this.payload);
}


class GetInputArgs extends Action{
  List<dynamic> payload;
  GetInputArgs(this.payload);
}

class GetJsonAction extends Action{
  Map<String, dynamic> payload;
  GetJsonAction(this.payload);
}

class UpdateMiles extends Action{
  String payload;

  UpdateMiles(this.payload);
}

class GetJoke extends Action{
  String payload;

  GetJoke(this.payload);
}

class ErrorOccurredAction extends Action{
  String message;

  ErrorOccurredAction(this.message);
}


