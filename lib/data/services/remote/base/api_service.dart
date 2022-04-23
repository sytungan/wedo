import 'package:flutter/foundation.dart';
import 'package:wedo/data/services/remote/base/api_client.dart';

abstract class APIService {
  @protected
  final client = APIClient();
}
