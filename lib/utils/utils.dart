import 'datetime/datetime.dart';
import 'regex/regex.dart';
import 'package:intl/intl.dart';

extension ObjectExt<T> on T {
  // ignore: unnecessary_cast
  R let<R>(R Function(T that) op) => op(this as T);
}

extension StringX on String {
  Future<String> validate(RegExpPattern pattern, String errorMessage) async {
    return StringValidator(
      pattern: pattern.value,
      errorMessage: errorMessage,
    ).validate(this);
  }

  DateTime toDateTime(DateTimeFormat format) {
    final dateFormat = DateFormat(format.toPatternString());
    return dateFormat.parse(this);
  }
}
