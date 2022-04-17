import 'dart:io';
import 'package:dio/dio.dart';
import 'base.dart';

class ApiClient {
  late Dio _dio;

  ApiClient({String url = BaseUrls.local}) {
    _dio = Dio(BaseOptions(
      baseUrl: url,
      connectTimeout: 3000,
      receiveTimeout: 3000,
    ));
    _dio.interceptors
      ..add(ApiLogger())
      ..add(ApiInterceptor());
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
