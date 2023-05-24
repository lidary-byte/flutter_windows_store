import 'package:dio/dio.dart';
import 'package:flutter_windows_store/http/http_manage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final List _homeList = [];

  List get homeList => _homeList;

  final List _banner = [];

  List get banner => _banner;

  @override
  void onReady() {
    super.onReady();
    _homeData();
  }

  void _homeData() async {
    change(null, status: RxStatus.loading());
    final banner = HttpManager.getInstance().get(
        "appstorecontents/page/top_contents",
        queryParameters: {'pageType': 'soft'});
    final homeList = HttpManager.getInstance().get(
        "appstorecontents/page/op_recommend_contents",
        queryParameters: {'pageType': 'soft'});
    try {
      final resp = await Future.wait([banner, homeList]);
      if (resp[0]['status'] == 0 && resp[0]['data'] != null) {
        _banner.clear();
        _banner.addAll(resp[0]['data']);
      }
      if (resp[1]['status'] == 0 && resp[1]['data'] != null) {
        _homeList.clear();
        _homeList.addAll(resp[1]['data']);
      }
      change(null, status: RxStatus.success());
      update();
    } on DioError catch (e) {
      e.printError;
      change(null, status: RxStatus.error());
    }
  }
}
