class TextFieldValidator {
  final bool condition;
  final String message;

  TextFieldValidator({required this.condition, required this.message});
}

class AppFunctions {
  static String? handleTextFieldValidator(
      {required List<TextFieldValidator> validators}) {
    String? result;
    for (TextFieldValidator validator in validators) {
      if (validator.condition) {
        result = validator.message;
      }
      if (result != null) break;
    }
    return result;
  }

  static DateTime dateFromTimeStamp({required int timestamp}) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  }
}
