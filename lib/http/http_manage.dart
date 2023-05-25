import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_windows_store/constant/app_prefs.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpManager {
  static const int connectTime = 5000;
  static const int receiveTimeout = 3000;
  static HttpManager? _instance;
  late Dio _dio;

  static HttpManager getInstance() {
    _instance ??= HttpManager._internal();
    return _instance!;
  }

  HttpManager._internal() {
    BaseOptions options = BaseOptions(
        connectTimeout: const Duration(milliseconds: connectTime),
        receiveTimeout: const Duration(milliseconds: receiveTimeout),
        headers: {
          // HttpHeaders.userAgentHeader: 'dio',
          'token': AppPrefs.getInstance().token
                 // 'common-header': 'xx',
        },
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        baseUrl: "https://pc-store.lenovomm.cn/");
    _dio = Dio(options)
      ..interceptors.add(PrettyDioLogger(
          requestHeader: false,
          requestBody: false,
          responseHeader: false,
          responseBody: false,
          error: false,
          compact: false));
  }

  Future<dynamic> get(String url,
      {Map<String, dynamic>? queryParameters}) async {
    Response? response;
    try {
      response = await _dio.get(url, queryParameters: queryParameters);
      if (response.statusCode != 200) {
        throw Exception(response.statusMessage);
      }
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      } else {
        throw Exception(e.message);
      }
    }
    return response?.data;
  }

  Future<dynamic> post(String url, {Map<String, dynamic>? data}) async {
    Response? response;
    try {
      response = await _dio.post(url, data: data);
      if (response.statusCode != 200) {
        throw Exception(response.statusMessage);
      }
    } on DioError catch (e) {
      if (e.response != null) {
        response = e.response;
      } else {
        throw Exception(e.message);
      }
    }
    return response?.data;
  }
}
