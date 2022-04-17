class StringValidator {
  final String pattern;
  final String errorMessage;

  StringValidator({
    required this.pattern,
    required this.errorMessage,
  });

  Future<String> validate(String value) async {
    final regExp = RegExp(pattern);
    if (regExp.hasMatch(value)) {
      return value;
    } else {
      throw errorMessage;
    }
  }
}
