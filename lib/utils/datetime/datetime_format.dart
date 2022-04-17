import 'package:intl/intl.dart';

enum DateTimeFormat {
  yyyyMMdd,
  mMMdEEE,
  eEEddMMMyyyy,
  hmma,
  hhmm,
}

extension DateTimeFormatX on DateTimeFormat {
  String toPatternString() {
    switch (this) {
      case DateTimeFormat.yyyyMMdd:
        return 'yyyy-MM-dd';
      case DateTimeFormat.mMMdEEE:
        return 'MMM d (EEE)';
      case DateTimeFormat.eEEddMMMyyyy:
        return 'EEE, dd MMM yyyy';
      case DateTimeFormat.hmma:
        return 'h:mm a';
      case DateTimeFormat.hhmm:
        return 'HH:mm';
    }
  }
}

extension DateTimeX on DateTime {
  String toText(String pattern) {
    final dateFormat = DateFormat(pattern);
    return dateFormat.format(this);
  }
}
