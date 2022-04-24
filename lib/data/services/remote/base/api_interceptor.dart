import 'package:dio/dio.dart';
import 'package:wedo/data/models/user/user.dart';
import 'package:wedo/data/services/local/local.dart';

class APIInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // TODO: Add authentication\
    final user = await LocalStorage.loadToObject(LocalKeys.keyUser);
    if (user != null) {
      final token = User.fromJson(user).token!.access;
      // print(token);
      options.headers['Authorization'] = 'Bearer $token';
    }

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // TODO: Handle error
    return super.onError(err, handler);
  }
}
