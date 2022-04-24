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

  Future<APIResponse> earnPoint(String id) {
    return client.execute(
        request: APIRequest(
            method: HTTPMethods.post,
            path: '/point/activity/apply/',
            body: {'id': id}));
  }
}
