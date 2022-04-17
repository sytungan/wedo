class LocalKey {
  const LocalKey(this.value);
  final String value;
}

class LocalKeys {
  LocalKeys._();
  static const keyUser = LocalKey('KEY_USER');
  static const keyToken = LocalKey('KEY_TOKEN');
}
