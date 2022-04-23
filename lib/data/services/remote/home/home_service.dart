import '../base/base.dart';

class HomeService extends APIService {
  Future<APIResponse> home() {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.get,
      path: '/point/home/',
    ));
  }
}
