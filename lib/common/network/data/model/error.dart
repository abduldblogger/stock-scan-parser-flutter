class MyException {
  String? errorMsg;
  int? errorCode;

  MyException({this.errorMsg, this.errorCode});
}

class NoInternetException extends MyException {
  NoInternetException(String errorMsg, int errorCode)
      : super(errorMsg: errorMsg, errorCode: errorCode);
}

class NoServiceFoundException extends MyException {
  NoServiceFoundException(String errorMsg, int errorCode)
      : super(errorMsg: errorMsg, errorCode: errorCode);
}

class InvalidFormatException extends MyException {
  InvalidFormatException(String errorMsg, int errorCode)
      : super(errorMsg: errorMsg, errorCode: errorCode);
}

class UnknownException extends MyException {
  UnknownException(String errorMsg, int errorCode)
      : super(errorMsg: errorMsg, errorCode: errorCode);
}
