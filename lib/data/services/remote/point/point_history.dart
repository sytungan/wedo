import 'package:wedo/data/services/remote/base/base.dart';

class PointHistoryService extends APIService {
  Future<APIResponse> getPointHistory(int page, int limit) {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.get,
      path: '/token/',
      body: {'page': page, 'limit': limit},
    ));
  }
}
