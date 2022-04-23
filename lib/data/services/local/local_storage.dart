import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wedo/data/services/local/local_key.dart';
import 'dart:convert';

class LocalStorage {
  LocalStorage._();
  static const _storage = FlutterSecureStorage();

  static Future<String?> load(LocalKey key) => _storage.read(key: key.value);

  static Future<Map<String, dynamic>?> loadToObject(LocalKey key) async {
    final data = await _storage.read(key: key.value);
    if (data != null) {
      return json.decode(data);
    }
    return null;
  }

  static Future<void> write(LocalKey key, String value) =>
      _storage.write(key: key.value, value: value);

  static Future<void> writeAsObject(LocalKey key, dynamic value) async {
    if (value == null) await _storage.write(key: key.value, value: null);
    await _storage.write(key: key.value, value: json.encode(value));
  }
}
