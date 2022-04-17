extension ObjectExt<T> on T {
  // ignore: unnecessary_cast
  R let<R>(R Function(T that) op) => op(this as T);
}
