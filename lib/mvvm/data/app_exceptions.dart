class AppExceptions implements Exception {
  String _message;
  String _prefix;

  AppExceptions(this._message, this._prefix);

  @override
  String toString() {
    return "$_prefix and $_message";
  }
}



class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message!, "No Internet");
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message!, "Invalid Url");
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message!, "Error while communication");
}
