import 'package:wedo/data/models/models.dart';
import 'package:wedo/data/services/remote/base/base.dart';

class AuthenticationService extends APIService {
  Future<APIResponse> login(String username, String password) {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.post,
      path: '/token/',
      body: {'username': username, 'password': password},
    ));
  }
}
