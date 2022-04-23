export 'auth/authentication_service.dart';
import 'package:wedo/data/services/remote/base/base.dart';

class StoreService extends APIService {
  Future<APIResponse> listProduct(int page, int limit) {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.get,
      path: '/point/store/',
      parameters: {'page': page, 'password': limit},
    ));
  }
}
