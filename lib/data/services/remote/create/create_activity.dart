import 'package:wedo/data/services/remote/base/base.dart';

class CreateActivityService extends APIService {
  Future<APIResponse> createActivity(String title, String point, String type,
      String thumbnail, String timeOut) {
    return client.execute(
        request: APIRequest(
      method: HTTPMethods.post,
      path: '/point/activity/create/',
      body: {
        'title': title,
        'point': point,
        'type': type,
        'thumbnail': thumbnail,
        'time_out': timeOut
      },
    ));
  }
}
