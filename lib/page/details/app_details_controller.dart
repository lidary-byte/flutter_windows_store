import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../http/http_manage.dart';

class AppDetailsController extends GetxController with StateMixin {
  Map _details = {};

  Map get details => _details;

  final List<String> _appDetailsImg = [];

  List<String> get appDetailsImg => _appDetailsImg;

  final List _commentList = [];

  List get commentList => _commentList;

  String _commentSize = '';

  String get commentSize => _commentSize;

  @override
  void onInit() {
    super.onInit();
    final softId = Get.arguments['softId'];
    final bizInfo = Get.arguments['bizInfo'];
    _appDetails(softId, bizInfo);
    appComment(0, softId);
  }

  void _appDetails(String softId, String bizInfo) async {
    // try {
    //   final resp = await HttpManager.getInstance()
    //       .get('appstorecontents/app/details_new', queryParameters: {
    //     // 这两个参数是必填项
    //     'softid': softId,
    //     'bizInfo': bizInfo,
    //   });
    //   if (resp['status'] == 0 && resp['data'] != null) {
    //     _details = resp['data'];
    //     _appDetailsImg.addAll((_details['captureFileList'] as List)
    //         .where((element) =>
    //             element['url'].toString().endsWith('.png') ||
    //             element['url'].toString().endsWith('.jpg'))
    //         .map((e) => e['url']));
    //     change(null, status: RxStatus.success());
    //   }
    // } on DioError catch (e) {
    //   e.printError;
    //   change(null, status: RxStatus.error());
    // }
  }

  void appComment(int skip, String bizIdentity) async {
    // try {
    //   final map = {
    //     "labelCode": -1,
    //     "grade": -1,
    //     "sort": "DATE",
    //     "refresh": skip == 0,
    //     "skip": skip,
    //     "limit": 24,
    //     "bizIdentity": bizIdentity,
    //     "type": "1"
    //   };
    //   if (skip == 0) {
    //     _commentList.clear();
    //   }
    //   final resp = await HttpManager.getInstance()
    //       .post('comment/api/comment_list_v3', data: map);
    //   if (resp['status'] == 0 && resp['data'] != null) {
    //     final dataList = resp['data']['dataList'] as List;
    //     final int commentCount = resp['data']['count'] ?? 0;
    //     if (commentCount > 1000) {
    //       _commentSize = '${commentCount / 1000}k';
    //     } else {
    //       _commentSize = commentCount.toString();
    //     }
    //
    //     dataList.removeWhere((element) =>
    //         element['contentInfo'] == null ||
    //         element['contentInfo']['text'] == null);
    //     _commentList.addAll(dataList);
    //     update();
    //   }
    // } on DioError catch (e) {
    //   e.printError;
    // }
  }
}
