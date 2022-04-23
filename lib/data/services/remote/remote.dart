export 'auth/authentication_service.dart';
import 'package:wedo/data/services/remote/base/base.dart';
import '../../models/models.dart';

class StoreService extends APIService {
  Future<APIResponse> listProduct(String page, String limit) {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.get,
      path: '/store/',
      body: {'page': page, 'password': limit},
    ));
  }
}