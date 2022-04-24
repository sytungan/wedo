import '../base/base.dart';

class HomeService extends APIService {
  Future<APIResponse> home() {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.get,
      path: '/point/home/',
    ));
  }

  Future<APIResponse> updateUser() {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.get,
      path: '/users/me/',
    ));
  }
}
