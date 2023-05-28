import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../http/http_manage.dart';

class AppDetailsController extends GetxController with StateMixin {
  Map _details = {};

  Map get details => _details;

  @override
  void onInit() {
    super.onInit();
    final softId = Get.arguments['softId'];
    final bizInfo = Get.arguments['bizInfo'];
    _appDetails(softId, bizInfo);
  }

  void _appDetails(String softId, String bizInfo) async {
    try {
      final resp = await HttpManager.getInstance()
          .get('appstorecontents/app/details_new', queryParameters: {
        // 这两个参数是必填项
        'softid': softId,
        'bizInfo': bizInfo,
      });
      if (resp['status'] == 0 && resp['data'] != null) {
        _details = resp['data'];
        change(null, status: RxStatus.success());
      }
    } on DioError catch (e) {
      e.printError;
      change(null, status: RxStatus.error());
    }
  }
}
