import 'http_method.dart';

class APIRequest {
  APIRequest({
    required this.method,
    required this.path,
    this.parameters,
    this.body,
  });

  HTTPMethod method;
  String path;
  dynamic parameters;
  dynamic body;
}
