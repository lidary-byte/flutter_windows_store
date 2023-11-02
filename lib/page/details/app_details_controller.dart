import 'package:flutter/widgets.dart';
import 'package:flutter_windows_store/base/status_controller.dart';
import 'package:flutter_windows_store/entity/app_comment_entity.dart';
import 'package:flutter_windows_store/entity/app_details_entity.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../http/http_manage.dart';

class AppDetailsController extends StatusController {
  AppDetailsEntity? _details;

  AppDetailsEntity? get details => _details;

  final List<String> _appDetailsImg = [];

  List<String> get appDetailsImg => _appDetailsImg;

  final List<AppCommentDataList> _commentList = [];

  List<AppCommentDataList> get commentList => _commentList;

  String _commentSize = '';

  String get commentSize => _commentSize;

  final RefreshController refreshController = RefreshController();

  String? softId;

  int _skip = 24;

  @override
  void onInit() {
    super.onInit();
    softId = Get.arguments['softId'];
    final bizInfo = Get.arguments['bizInfo'];
    _appDetails(bizInfo);
    appComment();
  }

  void _appDetails(String bizInfo) async {
    // try {
    final resp = await HttpManager.getInstance().get<AppDetailsEntity>(
        'appstorecontents/app/details_new',
        queryParameters: {
          // 这两个参数是必填项
          'softid': softId,
          'bizInfo': bizInfo,
        });

    if (resp.isSuccess) {
      _details = resp.data;
      _appDetailsImg.addAll(_details?.captureFileList
              ?.where((element) =>
                  element.url?.endsWith('.png') == true ||
                  element.url?.endsWith('.jpg') == true)
              .map((e) => e.url!)
              .toList() ??
          []);
      updateSuccess();
      return;
    }
    updateError(errorMsg: resp.message);
  }

  void appComment() async {
    final map = {
      "labelCode": -1,
      "grade": -1,
      "sort": "DATE",
      "refresh": _skip == 24,
      "skip": _skip,
      "limit": 24,
      "bizIdentity": softId,
      "type": "1"
    };
    final resp = await HttpManager.getInstance()
        .post<AppCommentEntity>('comment/api/comment_list_v3', data: map);
    if (resp.isSuccess) {
      final int commentCount = resp.data?.count ?? 0;
      if (commentCount > 1000) {
        _commentSize = '${(commentCount / 1000).ceil()}k';
      } else {
        _commentSize = commentCount.toString();
      }

      final dataList = resp.data?.dataList;
      dataList?.removeWhere((element) =>
          element.contentInfo == null || element.contentInfo?.text == null);
      if (dataList?.isNotEmpty == true) {
        _commentList.addAll(dataList!);
        update(['comment']);
      }
      if (_commentList.length == resp.data?.count) {
        refreshController.loadNoData();
      }else{
        _skip+=24;
        refreshController.loadComplete();
      }
    }else{
      refreshController.loadFailed();
    }
  }

  @override
  void onClose() {
    refreshController.dispose();
    super.onClose();
  }
}
