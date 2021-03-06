import 'dart:io';
import 'package:dio/dio.dart';
import 'base.dart';

class APIClient {
  late Dio _dio;

  APIClient({String url = BaseUrls.remote}) {
    _dio = Dio(BaseOptions(baseUrl: url));
    _dio.interceptors
      ..add(APILogger())
      ..add(APIInterceptor());
  }

  Future<APIResponse> execute({required APIRequest request}) async {
    Options options = Options(
      contentType: Headers.jsonContentType,
      method: request.method.value,
    );

    try {
      Response response = await _dio.request(
        request.path,
        queryParameters: request.parameters,
        data: request.body,
        options: options,
      );

      return APIResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw e.response?.statusMessage ??
          APIResponse.fromJson(e.response?.data).error?.message ??
          'An unexpected error occurred.';
    } on SocketException catch (e) {
      throw e.message;
    } on HttpException catch (e) {
      throw e.message;
    } on Exception catch (e) {
      throw e.toString();
    }
  }
}
