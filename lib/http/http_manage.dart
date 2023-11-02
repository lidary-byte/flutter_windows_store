import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_windows_store/constant/app_prefs.dart';
import 'package:flutter_windows_store/entity/base_entity.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpManager {
  static const int connectTime = 5000;
  static const int receiveTimeout = 5000;
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
          'clientType': 1,
          'token':
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJvcyI6IndpbjEwIiwiY2giOiI5LjAuMTEwMC4wOTI2IiwibXQiOiJMZW5vdm8gVGhpbmtCb29rIDE0cCBHZW4gMiIsIm9zQml0IjoiNjQiLCJzbiI6IjJhZDYxNTVmODg5ZWM3M2M3NGIxMWY4MDYyY2Y0ZWU3YmUxMjcyZjFmNGI3YjE3NjQzZTIzN2ZkYmU1NTAyMGEiLCJleHAiOjE3MDAxOTAwNjgsInV1aWQiOiI0MTU0MDVBNC00NUJBLTExRUMtODBGMC04NEE5MzhCNDVGODMiLCJtYWMiOiI0Y2Q1NzcwYTcwMjEifQ.1FP2WwdvcqesXp5qVnfA-Wr2FRoJ9JNb7QZdYGSWfkY",
          //AppPrefs.getInstance().token,
          'h5need': '111111111111',
          'productCode': 2,
          'vt': 1
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
          error: true,
          compact: true));
  }

  Future<BaseEntity<T>> get<T>(String url,
      {Map<String, dynamic>? queryParameters}) async {
    BaseEntity<T>? entity;
    try {
      Response response = await _dio.get(url, queryParameters: queryParameters);
      if (response.statusCode != 200) {
        throw Exception(response.statusMessage);
      }
      entity = BaseEntity.fromJson(response.data);
    } on DioException catch (e) {
      entity = BaseEntity(status: 404, message: e.message);
    }
    return entity;
  }

  Future<BaseEntity<T>> post<T>(String url,
      {Map<String, dynamic>? data}) async {
    BaseEntity<T>? entity;
    try {
      Response response = await _dio.post(url, data: data);
      if (response.statusCode != 200) {
        throw Exception(response.statusMessage);
      }
      entity = BaseEntity.fromJson(response.data);
    } on DioException catch (e) {
      entity = BaseEntity(status: 404, message: e.message);
    }
    return entity;
  }
}
