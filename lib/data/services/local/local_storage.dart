import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wedo/data/services/local/local_key.dart';
import 'dart:convert';

class LocalStorage {
  LocalStorage._();
  final _storage = const FlutterSecureStorage();

  Future<String?> load(LocalKey key) => _storage.read(key: key.value);

  Future<Map<String, dynamic>?> loadToObject(LocalKey key) async {
    final data = await _storage.read(key: key.value);
    if (data != null) {
      return json.decode(data);
    }
    return null;
  }

  Future<void> write(LocalKey key, String value) =>
      _storage.write(key: key.value, value: value);

  Future<void> writeAsObject(LocalKey key, dynamic value) =>
      _storage.write(key: key.value, value: json.encode(value));
}
