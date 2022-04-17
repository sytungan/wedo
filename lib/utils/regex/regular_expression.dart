class RegExpPattern {
  final String value;
  RegExpPattern(this.value);
}

class RegExpPatterns {
  static RegExpPattern isRequired = RegExpPattern(r'\S');
  static RegExpPattern isFullNameLength = RegExpPattern(r'^.{0,50}$');
  static RegExpPattern isRoleLength = RegExpPattern(r'^.{0,50}$');

  static RegExpPattern isMinimumPasswordLength = RegExpPattern(r'^.{8,}$');
  static RegExpPattern isPasswordLength = RegExpPattern(r'^.{8,23}$');
  static RegExpPattern isEmail = RegExpPattern(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
}
